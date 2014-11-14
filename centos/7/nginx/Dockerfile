# salizzar/centos-7-nginx
# VERSION	0.0.1

FROM		centos:centos7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ADD		repos/nginx.repo	/etc/yum.repos.d/

RUN		yum install -y nginx	&&	\
		echo 'daemon off;'	>> /etc/nginx/nginx.conf

EXPOSE		80

ENTRYPOINT	[ "/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf" ]
