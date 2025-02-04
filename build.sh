#!/bin/bash

mkdir tempdir

cp pycalc.py tempdir/.
echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY sample_app.py /home/pycalc/" >> tempdir/Dockerfile
echo "EXPOSE 5050" >> tempdir/Dockerfile
echo "CMD python3 /home/pycalc/pycalc.py" >> tempdir/Dockerfile

cd tempdir

docker build -t pycalc .

docker run -t -d -p 5050:5050 --name pycalcrunning pycalc
docker ps -a
