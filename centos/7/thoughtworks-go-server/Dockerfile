# salizzar/centos-7-thoughtworks-go-server
# VERSION	0.0.1

FROM		salizzar/centos-7-repo-thoughtworks-go
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

RUN		yum install -y go-server				&&	\
		/etc/init.d/go-server stop				&&	\
		sed -iE 's/DAEMON=Y/DAEMON=N/' /etc/default/go-server

USER		go

EXPOSE		8153
EXPOSE		8154

ENTRYPOINT	[ "/etc/init.d/go-server", "start" ]

