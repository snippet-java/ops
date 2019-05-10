#!/bin/bash
source setup.config
command="oc get services -n ${namespace_name}"
echo $command
$command
