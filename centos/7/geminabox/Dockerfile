# salizzar/centos-7-geminabox
# VERSION	0.0.1

FROM		salizzar/centos-7-ruby
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

RUN		gem install geminabox unicorn

RUN		mkdir /geminabox
COPY		files/geminabox/config.ru /geminabox/

ENV		HOME	/geminabox
WORKDIR		/geminabox

EXPOSE		8080

ENTRYPOINT	[ "/usr/bin/ruby", "-S", "unicorn" ]

