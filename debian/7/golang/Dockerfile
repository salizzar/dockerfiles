# salizzar/debian-7-golang
# VERSION	0.0.2

FROM		debian:7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV		HOME	/usr/local/go
ENV		GOPATH	$HOME
ENV		PATH	$PATH:$GOPATH/bin

RUN		apt-get update && 	\
		apt-get install -y	\
		bzr 			\
		curl 			\
		git 			\
		golang 			\
		mercurial 		\
		subversion && 		\
		apt-get clean && 	\
		mkdir -p $GOPATH/{bin,src,pkg}

WORKDIR		/usr/local/go/src
