#Base Define
FROM tomcat:7-jre7
MAINTAINER kai.zhu "kai.zhu@yihuonet.com"
ENV REFRESHED_AT 2016-01-28 13:27

#Version Define - !!!!!!!!!!!!!!!MUST REVISE HERE FIRST!!!!!!!!!!!!!!!!!!!!!
ENV YIHUONET_MCMS_SERIES general-1
ENV YIHUONET_MCMS_VER 1.1.1
ENV YIHUONET_MCMS_FILENAME mcms-$YIHUONET_MCMS_SERIES-v$YIHUONET_MCMS_VER.zip
########################################
# History  
# 2015-11-27 v0.0.1 First Version
# 2015-12-23 v0.1.0 Push Online-test Version
# 2016-01-04 v1.0.1 Land
# 2016-01-25 v1.1.0 Final version update
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

