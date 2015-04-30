# salizzar/debian-7-fpm-cookery-ruby
# VERSION	0.0.1

FROM		salizzar/debian-7-ruby
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV		HOME		/root

RUN		echo 'deb http://http.debian.net/debian unstable main' > /etc/apt/sources.list.d/sid.list

RUN		apt-get clean
RUN		apt-get update

RUN		apt-get install -y dpkg-dev zlib1g-dev lbzip2 git libxml2-dev libxslt-dev	&&	\
		gem install --no-ri --no-rdoc fpm-cookery					&&	\
		gem install --no-ri --no-rdoc -v '< 2' aws-sdk

WORKDIR		/root

