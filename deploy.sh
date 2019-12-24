#!/bin/bash

docker build -t lu23/multi-client:latest -t lu23/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t lu23/multi-server:latest -t lu23/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t lu23/multi-worker:latest -t lu23/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push lu23/multi-client:latest
docker push lu23/multi-server:latest
docker push lu23/multi-worker:latest

docker push lu23/multi-client:$SHA
docker push lu23/multi-server:$SHA
docker push lu23/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=lu23/multi-server:$SHA
kubectl set image deployments/client-deployment client=lu23/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=lu23/multi-worker:$SHA
