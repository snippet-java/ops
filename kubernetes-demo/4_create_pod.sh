#!/bin/bash
command="kubectl --namespace=kubedemo1 run myvertx --image=alkesh/kube-nodejs:v1 --port=8081"
echo $command
$command
