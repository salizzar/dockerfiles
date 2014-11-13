FROM		salizzar/centos-7-elasticsearch-base

RUN		yum install -y elasticsearch && \
		ln -s /etc/elasticsearch /usr/share/elasticsearch/config

EXPOSE		9200
EXPOSE		9300

CMD		[ "/usr/share/elasticsearch/bin/elasticsearch" ]
