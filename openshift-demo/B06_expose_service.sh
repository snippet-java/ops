#!/bin/bash
source setup.config
command="oc --namespace=${namespace_name} expose deployment --port=${port} ${application_name} --type=LoadBalancer"
echo $command
$command
