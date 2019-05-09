#!/bin/bash
source setup.config
command="kubectl --namespace=${namespace_name} set image deployment/${application_name} ${application_name}=${update_image_name}"

echo $command
$command
