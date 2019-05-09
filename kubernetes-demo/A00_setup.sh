#!/bin/bash

source setup.config
echo "Update kubedemo-namespace.yaml"
sed -i "s/name: .*/name: $namespace_name/g" kubedemo-namespace.yaml

echo "Update kubedemo-deployment.yaml"
sed -i "s/app: .*/app: $application_name/g" kubedemo-deployment.yaml
sed -i "s/name: .*/name: $application_name/g" kubedemo-deployment.yaml
sed -i "s/namespace: .*/namespace: $namespace_name/g" kubedemo-deployment.yaml
sed -i "s/port: [1-9].*/port: $port/g" kubedemo-deployment.yaml
sed -i "s/containerPort: .*/containerPort: $port/g" kubedemo-deployment.yaml
sed -i "s+image: .*+image: $image_name+g" kubedemo-deployment.yaml

echo "Update port no. in node-demo/hello-http.js file"
sed -i "s/})\.listen(.*,/})\.listen($port,/g" node-demo/hello-http.js
sed -i "s+http://:.*/');+http://:$port/');+g" node-demo/hello-http.js
sed -i "s/EXPOSE .*/EXPOSE $port/g" node-demo/Dockerfile

echo "Login to console, please enter password when it prompts"
oc login -u cluster_admin
