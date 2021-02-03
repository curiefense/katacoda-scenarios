#!/bin/bash

apt install -y git docker.io docker-compose libpq-dev python3-dev gcc python3-psycopg2

git clone https://github.com/curiefense/curiefense.git
cd curiefense/deploy/compose/
docker-compose up