#!/bin/bash

echo 'This only works if you are on a node in the cluster'

echo 'kubectl --namespace=kubedemo get services kube-nodejs -o yaml \'
echo '| grep clusterIP \'
echo '| cut -f2 -d:'
  
IP=$(kubectl --namespace=kubedemo1 get services kube-nodejs -o yaml \
  | grep clusterIP \
  | cut -f2 -d:)

for i in $(seq 1 10); do
  curl --connect-timeout 1 -s $IP:8081;
  echo
  sleep 1;
done
