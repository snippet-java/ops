#!/bin/bash
source setup.config
command="oc --namespace=${namespace_name} rollout undo deployment/${application_name}"
echo $command
$command
