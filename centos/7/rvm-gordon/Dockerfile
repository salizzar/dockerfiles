# salizzar/centos-7-rvm-gordon
# VERSION	0.0.1

FROM		salizzar/centos-7-rvm
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

RUN		yum install -y							\
		mariadb-devel							\
		postgresql-devel						\
		sqlite-devel							\
		rpm-build

RUN		/bin/bash -l -c "rvm use 2.2.4 ; gem install bundler gordon"	&&	\
		/bin/bash -l -c "rvm use 2.3.0 ; gem install bundler gordon"

