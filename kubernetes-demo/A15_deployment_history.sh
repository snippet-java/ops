#!/bin/bash
source setup.config
command="kubectl --namespace=${namespace_name} rollout history deployment ${application_name}"
echo $command
$command
