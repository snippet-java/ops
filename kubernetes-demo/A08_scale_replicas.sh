#!/bin/bash

command='kubectl --namespace=kubedemo scale deployment kube-nodejs --replicas=3'
echo $command 
$command
