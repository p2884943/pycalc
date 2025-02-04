#!/bin/bash

mkdir tempdir

cp calc.py /home/tempdir/.
echo "FROM python" >> /home/tempdir/Dockerfile
echo "COPY calc.py /home/pycalc/" >> /home/tempdir/Dockerfile
echo "EXPOSE 5050" >> /home/tempdir/Dockerfile
echo "CMD python3 /home/pycalc/calc.py" >> /home/tempdir/Dockerfile

cd /home/tempdir

docker build -t pycalc .

docker run -t -d -p 5050:5050 --name pycalcrunning pycalc
docker ps -a
