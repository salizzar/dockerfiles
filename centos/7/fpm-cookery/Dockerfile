# salizzar/centos-7-fpm-cookery
# VERSION	0.0.1

FROM		salizzar/centos-7-ruby
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV		HOME		/root

RUN		rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/l/lbzip2-2.5-1.el7.x86_64.rpm	&&	\
		yum install -y rpm-build git libxml2-devel libxslt-devel				&&	\
		gem install --no-ri --no-rdoc fpm-cookery						&&	\
		gem install --no-ri --no-rdoc -v '< 2' aws-sdk

WORKDIR		/root

