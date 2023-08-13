#!/bin/bash
kubectl proxy --accept-hosts '.*' &
docker run -it -p 8080:8080 -e CLUSTERS=http://docker.for.mac.localhost:8001 hjacobs/kube-ops-view


kubectl proxy --address='0.0.0.0' --port=8002 --accept-hosts='.*'
