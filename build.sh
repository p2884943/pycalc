#!/bin/bash

mkdir /home/devasc/tempdir

cp calc.py /home/devasc/tempdir/.
echo "FROM python" >> /home/devasc/tempdir/Dockerfile
echo "COPY calc.py /home/pycalc/" >> /home/devasc/tempdir/Dockerfile
echo "EXPOSE 5050" >> /home/devasc/tempdir/Dockerfile
echo "CMD python3 /home/pycalc/calc.py" >> /home/devasc/tempdir/Dockerfile

cd /home/devasc/tempdir

docker build -t pycalc .

docker run -t -d -p 5050:5050 --name pycalcrunning pycalc
docker ps -a
