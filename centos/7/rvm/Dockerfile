# salizzar/centos-7-rvm
# VERSION	0.0.1

FROM		centos:centos7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

RUN		useradd --home-dir /home/rvm --create-home --shell /bin/bash rvm

RUN		yum install -y curl tar git sudo						&&	\
		curl -sSL https://get.rvm.io | bash						&&	\
		echo 'source /etc/profile.d/rvm.sh'	>> /home/rvm/.bashrc			&&	\
		echo 'rvm_install_on_use_flag=1'	 > /home/rvm/.rvmrc			&&	\
		echo 'rvm ALL=(ALL) NOPASSWD:ALL' 	 > /etc/sudoers.d/rvm

RUN		/bin/bash -l -c "rvm install 2.1.5 ; rvm use 2.1.5 ; gem install gordon"	&&	\
		/bin/bash -l -c "rvm install 2.2.0 ; rvm use 2.2.0 ; gem install gordon"

ENV		HOME	/home/rvm
USER		rvm
WORKDIR		/home/rvm

