#!/bin/bash

command='kubectl --namespace=kubedemo scale deployment kube-nodejs --replicas=2'
echo $command 
$command
