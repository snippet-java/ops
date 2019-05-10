#!/bin/bash
source setup.config

command="oc new-app ${github_url} -l name=${app_label} -n ${namespace_name}"
echo $command
$command
