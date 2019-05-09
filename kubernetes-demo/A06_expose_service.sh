#!/bin/bash

command='kubectl --namespace=kubedemo expose deployment --port=8081 kube-nodejs --type=LoadBalancer'
echo $command
$command
