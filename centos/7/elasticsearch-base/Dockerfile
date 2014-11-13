# salizzar/centos-7-elasticsearch-base
# VERSION	0.0.1

FROM		centos:centos7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV		HOME	/root

RUN		rpm --import http://packages.elasticsearch.org/GPG-KEY-elasticsearch

ADD		repos/elasticsearch-1.4.x.repo	/etc/yum.repos.d/
ADD		repos/logstash-1.4.x.repo	/etc/yum.repos.d/
