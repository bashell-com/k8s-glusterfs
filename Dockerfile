FROM rancher/k8s:v1.11.9-rancher1-1
MAINTAINER Chaiwat Suttipongsakul "cwt@bashell.com"

RUN apt update \
 && apt install -y apt-transport-https software-properties-common \
 && add-apt-repository -y -u ppa:brightbox/glusterfs-3.8 \
 && apt upgrade -y glusterfs-client glusterfs-common \
 && apt remove -y apt-transport-https software-properties-common \
 && apt autoremove -y ; apt clean ; apt autoclean
