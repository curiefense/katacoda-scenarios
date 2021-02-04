#!/bin/bash

apt-get install -y git docker.io docker-compose libpq-dev python3-dev gcc python3-psycopg2 vim

git clone https://github.com/curiefense/curiefense.git
cd curiefense/deploy/compose/
docker-compose pull
docker-compose build