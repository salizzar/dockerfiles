# salizzar/centos-7-thoughtworks-go-server-git
# VERSION	0.0.1

FROM		salizzar/centos-7-thoughtworks-go-server
MAINTAINER	salizzar@gmail.com

# to work we need to run as root
USER		root

# install all necessary stuff
RUN		yum install -y git

# dance of ssh keys
RUN		mkdir -p	/var/go/.ssh
COPY		ssh 		/var/go/.ssh/
RUN		chown -R go:go	/var/go/.ssh	&&	\
		chmod 600	/var/go/.ssh/*

# change back to go user
USER		go

