#!/bin/bash

# in some cases you can just delete the deployment
command1="oc delete deploy/os-nodejs --namespace=osdemo"
echo $command1
$command1

# in other cases you might wish to wipe the whole namespace
echo 'oc delete -f ./kubedemo-namespace.yaml'
oc delete -f ./kubedemo-namespace.yaml
