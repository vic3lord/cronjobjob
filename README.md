# CronJobJob

Generate a Kubernetes Job to execute now! from a Kubernetes CronJob spec

> Deprecated: `kubectl` supports executing a job from `cronjob` spec.  
> `kubectl create job --from=cronjob/etl-example`

## Install

```sh
mv kubectl-cronjobjob /usr/local/bin/kubectl-cronjobjob # or any other place in $PATH

# Verify installation
kubectl cronjobjob <filename> <--dry-run>
```

## Example

```sh
kubectl cronjobjob cronjob.yaml
```

