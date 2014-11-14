# salizzar/centos-7-java
# VERSION	0.0.1

FROM		centos:centos7
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

ENV		HOME		/root

RUN 		curl -L -C - -b "oraclelicense=accept-securebackup-cookie" 				\
		-O http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jre-8u25-linux-x64.rpm	&&	\
		rpm -Uvh jre-*-linux-x64.rpm							&&	\
		rm jre-*-linux-x64.rpm

RUN		yum install -y unzip && yum clean all						&&	\
		cd /tmp										&&	\
		curl -L -C - -b "oraclelicense=accept-securebackup-cookie"				\
		-O http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip		&&	\
		unzip jce_policy-8.zip								&&	\
		mv UnlimitedJCEPolicyJDK8/*.jar /usr/java/jre*/lib/security/			&&	\
		rm -rf jce_policy-8.zip UnlimitedJCEPolicyJDK8

WORKDIR		/root
