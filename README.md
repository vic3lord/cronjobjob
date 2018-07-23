# CronJobJob

Generate a Kubernetes Job to execute now! from a Kubernetes CronJob spec

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

