# CronJobJob

Generate a Kubernetes Job to execute now! from a Kubernetes CronJob spec

> Deprecated: `kubectl` supports executing a job from `cronjob` spec.  
> `kubectl create job --from=cronjob/etl-example`

## Install

```sh
# Get the code
git clone https://github.com/vic3lord/cronjobjob ~/.kube/plugins/cronjobjob

# Verify installation
kubectl plugin cronjobjob --help
```

## Example

```sh
kubectl plugin cronjobjob -f cronjob.yaml
```

