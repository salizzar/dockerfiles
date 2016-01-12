# salizzar/centos-7-geminabox
# VERSION	0.0.1

FROM		salizzar/centos-7-rvm
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

RUN		bash -l -c 'rvm use 2.3.0'			&&	\
		bash -l -c 'gem install geminabox unicorn'

RUN		mkdir /geminabox
COPY		files/geminabox/config.ru /geminabox/

ENV		HOME	/geminabox
WORKDIR		/geminabox

EXPOSE		8080

ENTRYPOINT	[ "/usr/bin/ruby", "-S", "unicorn" ]

