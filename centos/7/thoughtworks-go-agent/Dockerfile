# salizzar/centos-7-thoughtworks-go-agent
# VERSION	0.0.1

FROM		salizzar/centos-7-repo-thoughtworks-go
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

RUN		yum install -y git go-agent									&&	\
		sed -iE 's/DAEMON=Y/DAEMON=N/' 						/etc/default/go-agent	&&	\
		sed -iE 's/GO_SERVER=127.0.0.1/GO_SERVER=${GO_SERVER:=127.0.0.1}/'	/etc/default/go-agent

ENV		HOME /var/go
WORKDIR		/var/go
USER		go

ENTRYPOINT	[ "/etc/init.d/go-agent", "start" ]

