#!/bin/bash
source setup.config
command="oc get routes -n ${namespace_name}"
echo $command
$command
