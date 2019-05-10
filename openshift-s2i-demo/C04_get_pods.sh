#!/bin/bash
source setup.config
command="oc get pods -n ${namespace_name}"
echo $command
$command
