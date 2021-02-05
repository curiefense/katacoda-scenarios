#!/bin/bash

git clone https://github.com/curiefense/curiefense.git
cd curiefense/deploy/compose/
docker-compose pull
docker-compose build