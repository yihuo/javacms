#Base Define
FROM daocloud.io/library/mysql:5.5
MAINTAINER kai.zhu "kai.zhu@yihuonet.com"
ENV REFRESHED_AT 2016-01-28 13:27

#Version and sqlname Define - !!!!!!!!!!!!!!!MUST REVISE HERE FIRST!!!!!!!!!!!!!!!!!!!!!
# History  
# 2016-02-27 v0.0.1 First Version
########################################
ADD script/ /docker-entrypoint-initdb.d/
ADD conf/ /etc/mysql/conf.d/
#MySQL passwd and port
ENV MYSQL_ROOT_PASSWORD my-secret-pw
ENV MYSQL_DATABASE mcms
ENV MYSQL_USER mcms
ENV MYSQL_PASSWORD mcmsmcms