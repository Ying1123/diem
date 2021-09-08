#!/usr/bin/env python3
"""
Usage:

    run_smt.py solver benchmark_dir output_dir

Runs benchmarks with solver (using binary in binaries/current) and places output in output_dir
"""

import argparse
import os
import subprocess, resource
import sys
import threading
import re
import signal
import time

STATUS_TIMEOUT = 124

def run_process(args, cwd, timeout, s_input=None):
    """Runs a process with a timeout `timeout` in seconds. `args` are the
    arguments to execute, `cwd` is the working directory and `s_input` is the
    input to be sent to the process over stdin. Returns the output, the error
    output and the exit code of the process. If the process times out, the
    output and the error output are empty and the exit code is 124."""

    out = ''
    err = ''
    exit_status = STATUS_TIMEOUT
    try:
        print(args)
        proc = subprocess.Popen(
            args,
            cwd=cwd,
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            preexec_fn=os.setsid)
        
        if timeout:
            timer = threading.Timer(timeout, lambda p: os.killpg(os.getpgid(p.pid), signal.SIGTERM), [proc])
            timer.start()

        usage_start = resource.getrusage(resource.RUSAGE_CHILDREN)
        start = time.time()
        out, err = proc.communicate(input=s_input)
        usage_end = resource.getrusage(resource.RUSAGE_CHILDREN)
        cpu_time = usage_end.ru_utime - usage_start.ru_utime
        elapsed = (time.time() - start)
        exit_status = proc.returncode

    finally:
        if timeout:
            # The timer killed the process and is not active anymore.
            if exit_status == -15 and not timer.is_alive():
                exit_status = STATUS_TIMEOUT
            timer.cancel()

    return out, err, exit_status, cpu_time

def main():
    """Parses the command line arguments and then calls the core of the
    script."""

    print('Starting')
    parser = argparse.ArgumentParser(
        description=
        'Runs benchmark and checks for correct exit status and output.')
    parser.add_argument('solver')
    parser.add_argument('benchmark_dir')
    parser.add_argument('output_dir')
    args = parser.parse_args()
    benchmark_dir = os.path.abspath(args.benchmark_dir)
    output_dir = os.path.abspath(args.output_dir)

    files = [f for f in os.listdir(benchmark_dir) if os.path.isfile(os.path.join(benchmark_dir, f))]

#    if os.environ.get('VALGRIND') == '1' and not wrapper:
#        wrapper = ['libtool', '--mode=execute', 'valgrind']

    timeout = float(os.getenv('TEST_TIMEOUT', 60.0))

    if args.solver == 'cvc4':
      bin_args = ['/Users/clarkbarrett/bin/cvc4']
      bin_args += ['-i','--lang','smt2']
    else:
      bin_args = ['/Users/clarkbarrett/bin/z3']
      bin_args += ['smt.auto_config=false','smt.mbqi=false','smt.qi.eager_threshold=100','smt.qi.lazy_threshold=100']

    results = open(output_dir+'/results.csv', 'w')
    results.write('benchmark, Solver Time, Exit Status, Result\n')
    for f in files:
        if not f.endswith('smt2'):
            continue
        command_line = [benchmark_dir+'/'+f]
        output, error, exit_status, solver_time = run_process(
            bin_args + command_line, output_dir,
            timeout)
        output = re.sub(r'^[ \t]*', '', output.decode(), flags=re.MULTILINE)
        match = re.findall('unknown',output)
        if match:
            result = 'unknown'
        else:
            match = re.findall('unsat',output)
            if match:
                result = 'unsat'
            else:
                match = re.findall('sat',output)
                if match:
                    result = 'sat'
                else:
                    result = 'error'
        results.write('{},{:.3},{},{}\n'.format(f, solver_time, exit_status, result))
        results.flush()
        output_file = open(output_dir+'/'+f+'.out','w')
        output_file.write('{}'.format(output))
        output_file.close()

        error = re.sub(r'^[ \t]*', '', error.decode(), flags=re.MULTILINE)
        err_file = open(output_dir+'/'+f+'.err','w')
        err_file.write('{}'.format(error))
        err_file.close()
    results.close()
        
if __name__ == "__main__":
    exit_code = main()
    sys.exit(exit_code)
