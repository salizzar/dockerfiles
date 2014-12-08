# salizzar/centos-7-repo-elasticsearch
# VERSION	0.0.1

FROM		salizzar/centos-7-java
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV		HOME	/root

RUN		rpm --import http://packages.elasticsearch.org/GPG-KEY-elasticsearch

ADD		repos/elasticsearch-1.4.x.repo	/etc/yum.repos.d/
ADD		repos/logstash-1.4.x.repo	/etc/yum.repos.d/
