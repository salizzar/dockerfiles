# salizzar/centos-7-rvm
# VERSION	0.0.1

FROM		centos:centos7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV		HOME /root/
WORKDIR		/root

RUN		yum install -y curl tar git which 				&&	\
		curl -sSL https://get.rvm.io | bash				&&	\
		echo 'source /etc/profile.d/rvm.sh'	>> /root/.bashrc	&&	\
		echo 'rvm_install_on_use_flag=1'	 > /root/.rvmrc

RUN		/bin/bash -l -c "rvm install 2.2.4"				&&	\
		/bin/bash -l -c "rvm install 2.3.0"

