# salizzar/centos-7-logstash-forwarder
# VERSION	0.0.1

FROM		centos:centos7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

RUN		yum install -y golang ruby-devel make unzip rpm-build								&&	\
		ruby -S gem install fpm

RUN		curl -Ls -o logstash-forwarder.zip https://github.com/elasticsearch/logstash-forwarder/archive/v0.3.1.zip	&&	\
		unzip logstash-forwarder											&&	\
		mv logstash-forwarder{-*,}

RUN		cd logstash-forwarder												&&	\
		make rpm													&&	\
		rpm -i lumberjack-0.3.1-1.x86_64.rpm

RUN		rm -rf logstash-forwarder*											&&	\
		yum remove -y golang ruby-devel make unzip rpm-build								&&	\
		yum clean -y all


ENTRYPOINT	[ "/opt/lumberjack/bin/lumberjack" ]
