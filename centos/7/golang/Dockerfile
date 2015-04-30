# salizzar/centos-7-golang
# VERSION	0.0.2

FROM    	centos:centos7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV     	HOME    /usr/local/go
ENV     	GOPATH  $HOME
ENV     	PATH    $PATH:$GOPATH/bin

RUN     	yum install -y	\
		bzr 		\
		curl 		\
		git 		\
		golang 		\
		mercurial 	\
		subversion && 	\
        	mkdir -p $GOPATH/{bin,src,pkg}

WORKDIR		/usr/local/go

