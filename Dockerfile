FROM rancher/k8s:v1.5.2-rancher1-3
MAINTAINER Chaiwat Suttipongsakul "cwt@bashell.com"

ENV GLUSTERFS38=https://download.gluster.org/pub/gluster/glusterfs/3.8/LATEST
ENV GLUSTERFS38_PUBKEY=${GLUSTERFS38}/rsa.pub
ENV GLUSTERFS38_JESSIE=${GLUSTERFS38}/Debian/jessie/apt

RUN apt-get update \
 && apt-get install -y apt-transport-https \
 && wget -O - ${GLUSTERFS38_PUBKEY} | apt-key add - \
 && echo deb ${GLUSTERFS38_JESSIE} jessie main > /etc/apt/sources.list.d/gluster.list \
 && apt-get update \
 && apt-get install -y glusterfs-client \
 && apt-get clean ; apt-get autoclean
