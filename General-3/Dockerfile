#Base Define
FROM tomcat:7-jre7
MAINTAINER kai.zhu "kai.zhu@yihuonet.com"
ENV REFRESHED_AT 2016-03-02 15:49

#Version Define - !!!!!!!!!!!!!!!MUST REVISE HERE FIRST!!!!!!!!!!!!!!!!!!!!!
ENV YIHUONET_MCMS_SERIES general-3
ENV YIHUONET_MCMS_VER 1.0.2
ENV YIHUONET_MCMS_FILENAME mcms-$YIHUONET_MCMS_SERIES-v$YIHUONET_MCMS_VER.zip
########################################
# History  
# 2015-01-20 v0.1.0 Based by General-1 dockerfile
# 2016-01-25 v1.0.0 Final version update
########################################

#########################################[START]!Pause official code to deploy yihuonet code.
ENV TOMCAT_ORIGIN_ROOT webapps/ROOT
ENV MCMS_DOWNLOAD_FILE http://a.oss.yihuonet.com/program-base/mcms/$YIHUONET_MCMS_FILENAME

#Deploy AND Delete origin root directory
WORKDIR $CATALINA_HOME/webapps
RUN apt-get install -y wget unzip \
    && rm -rf ROOT \
    && mkdir ROOT \
	&& cd $CATALINA_HOME/$TOMCAT_ORIGIN_ROOT \
	&& wget $MCMS_DOWNLOAD_FILE \
	&& unzip $YIHUONET_MCMS_FILENAME \
	&& rm -f $YIHUONET_MCMS_FILENAME \
    && cd $CATALINA_HOME/webapps \
	&& mv manager management
ADD tomcat/conf/server.xml $CATALINA_HOME/conf/server.xml

