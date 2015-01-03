# salizzar/centos-7-thoughtworks-go-agent-jenv
# VERSION	0.0.1

FROM		salizzar/centos-7-thoughtworks-go-agent
MAINTAINER	salizzar@gmail.com

# to work we need to run as root
USER		root

# install all necessary stuff
RUN		yum install -y		\
		git			\
		tar			\
		unzip			\
		rpm-build

# enable sudo for go user
RUN		yum install -y sudo								&&	\
		echo 'go ALL=NOPASSWD:ALL' > /etc/sudoers.d/go-agent				&&	\
		sed -iE 's/^Defaults    requiretty/#Defaults requiretty/' /etc/sudoers

# dance of ssh keys
RUN		mkdir -p 	/var/go/.ssh
COPY		ssh 		/var/go/.ssh/
RUN		chown -R go:go	/var/go/.ssh	&&	\
		chmod 600 	/var/go/.ssh/*

# change back to go user to install jenv on their $HOME
USER		go

# install RVM
RUN		curl -sL http://get.jenv.io | bash && mkdir ~/.jenv/conf

# setup necessary configurations to be ready on fetch materials
RUN		echo 'source ~/.jenv/bin/jenv-init.sh'	>> ~/.bashrc				&&	\
		echo 'export LANG="en_US.UTF-8"'	>> ~/.bashrc				&&	\
		echo 'export LANGUAGE="en_US.UTF-8"'	>> ~/.bashrc				&&	\
		echo 'export LC_ALL="en_US.UTF-8"'	>> ~/.bashrc				&&	\
		echo 'auto=true'			>> ~/.jenv/conf/settings

