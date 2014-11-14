# salizzar/centos-7-kibana
# VERSION	0.0.1

FROM		salizzar/centos-7-nginx
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

RUN		yum install -y unzip								&&	\
		curl -s -O https://download.elasticsearch.org/kibana/kibana/kibana-latest.zip	&& 	\
		unzip -o kibana-latest.zip							&&	\
		mv kibana-latest/* /usr/share/nginx/html					&&	\
		rm -rf kibana-latest*								&&	\
		yum remove -y unzip								&&	\
		yum clean -y all
