#!/bin/bash

source setup.config
echo "Update kubedemo-namespace.yaml"
sed -i "s/name: .*/name: $namespace_name/g" kubedemo-namespace.yaml

echo "Update kubedemo-service.yaml"
sed -i "s/name: nodejs-ex/name: $application_name/g" kubedemo-service.yaml
sed -i "s/app: .*/app: $application_name/g" kubedemo-service.yaml
sed -i "s/name: myapp/name: $app_label/g" kubedemo-service.yaml
sed -i "s/namespace: .*/namespace: $namespace_name/g" kubedemo-service.yaml


ip_address=$(ifconfig eth1 | grep inet | awk '{print $2}' | cut -f2 -d:)
ipoct4=$(echo ${ip_address} | tr "." " " | awk '{ print $4 }')
domain_name="apps.openshift${ipoct4}.bluecloudcourse.com"
host_name=$application_name"-"$namespace_name"."$domain_name

sed -i "s/host: .*/host: $host_name/g" kubedemo-service.yaml

echo "Login to console, please enter password when it prompts"
oc login -u cluster_admin
