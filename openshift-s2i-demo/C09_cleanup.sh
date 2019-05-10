#!/bin/bash
source setup.config
echo 'oc delete -f ./kubedemo-namespace.yaml'
oc delete -f ./kubedemo-namespace.yaml
