#!/bin/bash
source setup.config
command1="kubectl delete deploy/${application_name} --namespace=${namespace_name}"
echo $command1
$command1

echo 'kubectl delete -f ./kubedemo-namespace.yaml'
kubectl delete -f ./kubedemo-namespace.yaml
