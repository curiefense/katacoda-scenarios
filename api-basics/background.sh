#!/bin/bash

cd /root/curiefense/deploy/compose
docker-compose up -d

echo "done" | sudo tee /root/katacoda-finished
echo "Everything ready... Finalise the deployment"
/usr/local/bin/deploy.sh
echo "done" | sudo tee /root/katacoda-background-finished