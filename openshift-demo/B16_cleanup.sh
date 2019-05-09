#!/bin/bash
source setup.config
command1="oc delete deploy/${application_name} --namespace=${namespace_name}"
echo $command1
$command1

echo 'oc delete -f ./kubedemo-namespace.yaml'
oc delete -f ./kubedemo-namespace.yaml
