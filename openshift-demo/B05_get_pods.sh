#!/bin/bash

command="oc get pods -n osdemo"
echo $command
$command
