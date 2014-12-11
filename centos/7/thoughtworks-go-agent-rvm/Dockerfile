# salizzar/centos-7-thoughtworks-go-agent-rvm
# VERSION	0.0.1

FROM		salizzar/centos-7-thoughtworks-go-agent
MAINTAINER	salizzar@gmail.com

# to work we need to run as root
USER		root

# install all necessary stuff
RUN		yum install -y		\
		git			\
		tar			\
		mariadb-devel		\
		postgresql-devel	\
		sqlite-devel

# enable sudo for go user
RUN		yum install -y sudo								&&	\
		echo 'go ALL=NOPASSWD:ALL' > /etc/sudoers.d/go-agent				&&	\
		sed -iE 's/^Defaults    requiretty/#Defaults requiretty/' /etc/sudoers

# dance of ssh keys
RUN		mkdir -p 	/var/go/.ssh
COPY		ssh 		/var/go/.ssh/
RUN		chown -R go:go	/var/go/.ssh	&&	\
		chmod 600 	/var/go/.ssh/*

# change back to go user to install rvm on their $HOME
USER		go

# install RVM
RUN		curl -sSL https://get.rvm.io | bash

# setup necessary configurations to be ready on fetch materials
RUN		echo 'source ~/.profile' 		>> ~/.bashrc				&&	\
		echo 'export LANG="en_US.UTF-8"'	>> ~/.bashrc				&&	\
		echo 'export LANGUAGE="en_US.UTF-8"'	>> ~/.bashrc				&&	\
		echo 'export LC_ALL="en_US.UTF-8"'	>> ~/.bashrc				&&	\
		echo 'rvm_install_on_use_flag=1' 	>  ~/.rvmrc				&&	\
		echo 'rvm_gemset_create_on_use_flag=1'	>> ~/.rvmrc

