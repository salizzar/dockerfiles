# salizzar/centos-7-elasticsearch
# VERSION	0.0.1

FROM		salizzar/centos-7-repo-elasticsearch
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

RUN		yum install -y elasticsearch							&&	\
		mkdir -p /usr/share/elasticsearch/config					&&	\
		ln -s /etc/elasticsearch/* /usr/share/elasticsearch/config

# enable to kibana consume (disabled in 1.4)
RUN		echo 'http.cors.enabled: true' >> /etc/elasticsearch/elasticsearch.yml

EXPOSE		9200
EXPOSE		9300

CMD		[ "/usr/share/elasticsearch/bin/elasticsearch" ]
