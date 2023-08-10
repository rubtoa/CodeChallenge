#!/bin/bash
kubectl proxy --accept-hosts '.*' &
docker run -it -p 8080:8080 -e CLUSTERS=http://docker.for.mac.localhost:8001 hjacobs/kube-ops-view
