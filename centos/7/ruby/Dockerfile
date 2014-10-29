# salizzar/centos-7-ruby
# VERSION	0.0.1

FROM		centos:centos7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV		HOME		/root
ENV		RUBYPATH	$HOME/ruby

RUN		yum install -y		\
		gcc			\
		gcc-c++			\
		make			\
		ruby			\
		rubygem-bundler &&	\
		mkdir -p $RUBYPATH/src

WORKDIR		/root/ruby/src
