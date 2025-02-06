#!/bin/bash

# Create a log file for capturing output
LOGFILE="build.log"
exec > >(tee -a $LOGFILE) 2>&1

mkdir tempdir

cp calc.py tempdir/.
echo "FROM python" >> tempdir/Dockerfile
echo "COPY calc.py /home/pycalc/" >> tempdir/Dockerfile
echo "EXPOSE 5050" >> tempdir/Dockerfile
echo "CMD python3 /home/pycalc/calc.py" >> tempdir/Dockerfile

cd tempdir

docker build -t pycalc .
