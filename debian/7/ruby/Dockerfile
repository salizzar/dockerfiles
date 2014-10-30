# salizzar/debian-7-ruby
# VERSION	0.0.1

FROM		debian:7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV		HOME		/root

RUN		apt-get update &&	\
		apt-get install -y 	\
		bundler			\
		gcc			\
		g++			\
		make			\
		ruby &&			\
		apt-get clean

WORKDIR		/root
