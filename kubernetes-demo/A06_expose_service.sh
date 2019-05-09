#!/bin/bash
source setup.config
command="kubectl --namespace=${namespace_name} expose deployment --port=${port} ${application_name} --type=LoadBalancer"
echo $command
$command
