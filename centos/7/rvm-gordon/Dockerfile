# salizzar/centos-7-rvm-gordon
# VERSION	0.0.1

FROM		centos:centos7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV		HOME	/root
WORKDIR		/root

RUN		yum install -y curl tar git			&&	\
		curl -sSL https://get.rvm.io | bash		&&	\
		echo 'source /etc/profile.d/rvm.sh' >> .bashrc

RUN		yum install -y						\
		git							\
		tar							\
		mariadb-devel						\
		postgresql-devel					\
		sqlite-devel						\
		rpm-build

RUN		/bin/bash -l -c "rvm install 2.1.2 ; rvm use 2.1.2 ; gem install gordon"	&&	\
		/bin/bash -l -c "rvm install 2.1.4 ; rvm use 2.1.4 ; gem install gordon"	&&	\
		/bin/bash -l -c "rvm install 2.1.5 ; rvm use 2.1.5 ; gem install gordon"	&&	\
		/bin/bash -l -c "rvm install 2.2.0 ; rvm use 2.2.0 ; gem install gordon"

