# Rancher Kubernetes image with Glusterfs 3.8 Client #

This Docker image is the same as [rancher/k8s](https://hub.docker.com/r/rancher/k8s/) with Glusterfs client version 3.8 to be able to use with Glusterfs server version 3.8.

## Usage ##

1. Go to your Rancher Dashboard -> KUBERNETES -> Infrastructure Stacks -> Kubernetes -> kubelet.
2. Click on `Upgrade` button.
3. On `Select Image` input field, change `rancher/k8s:v1.8.3-rancher3` to `bashell/k8s:v1.8.3-rancher3-glusterfs38`.

### Note: ###

* This image is created for the latest Rancher `rancher:stable` only!
* Please also follow the [Kubernetes Glusterfs Example](https://github.com/kubernetes/kubernetes/tree/master/examples/volumes/glusterfs) to use Glusterfs in your Pod.
