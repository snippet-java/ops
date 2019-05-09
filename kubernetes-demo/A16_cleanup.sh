#!/bin/bash
command1="oc delete deploy/kube-nodejs --namespace=kubedemo"
echo $command1
$command1

echo 'oc delete -f ./kubedemo-namespace.yaml'
oc delete -f ./kubedemo-namespace.yaml
