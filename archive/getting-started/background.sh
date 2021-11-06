#!/bin/bash

cd /root/curiefense/deploy/compose
docker-compose up -d

echo "done" | sudo tee /root/katacoda-finished
echo "Everything ready... Finalise the deployment"
/usr/local/bin/deploy.sh
echo "done" | sudo tee /root/katacoda-background-finished

generate_traffic () {
  for i in {1..10}; do curl -I https://[[HOST_SUBDOMAIN]]-30081-[[KATACODA_HOST]].environments.katacoda.com; done
}

generate_more_traffic () {
  for i in {1..20}; do curl -I https://[[HOST_SUBDOMAIN]]-30081-[[KATACODA_HOST]].environments.katacoda.com/404; done
}

while :
do
  generate_traffic
  sleep 4
  generate_more_traffic
done

