#!/usr/bin/env ruby

require 'yaml'

file = "#{ENV['PWD']}/#{ENV['KUBECTL_PLUGINS_LOCAL_FLAG_FILE']}"
puts file
manifest = YAML.load_file(file)
job_template = manifest['spec']['jobTemplate']
job_template['apiVersion'] = 'batch/v1'
job_template['kind'] = 'Job'
job_template['metadata'] = manifest['metadata']
job_template['metadata']['name'] = "#{job_template['metadata']['name']}-#{Time.now.to_i}"
File.write('/tmp/cronjobjob.yaml', job_template.to_yaml)

if ENV['KUBECTL_PLUGINS_LOCAL_FLAG_DRY_RUN'] == 'true'
  system('kubectl apply --dry-run -f /tmp/cronjobjob.yaml')
else
  system('kubectl apply -f /tmp/cronjobjob.yaml')
end
