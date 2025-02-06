#!/bin/bash

cd tempdir

docker run -t -d -p 5050:5050 --name pycalcrunning pycalc
docker ps -a
