#Base Define
FROM daocloud.io/library/mysql:5.5
MAINTAINER kai.zhu "kai.zhu@yihuonet.com"
ENV REFRESHED_AT 2016-03-03 09:58

#Version and sqlname Define - !!!!!!!!!!!!!!!MUST REVISE HERE FIRST!!!!!!!!!!!!!!!!!!!!!
# History  
# 2016-02-27 v0.0.1 First Version
########################################
#Add UTF-8 Support
RUN { \
      echo '[mysqld]'; \
      echo 'character-set-server=utf8'; \
      echo 'collation-server=utf8_general_ci'; \
      echo '[client]'; \
      echo 'default-character-set=utf8'; \
    } > /etc/mysql/conf.d/charset.cnf

#Import scripts in here
ADD script/ /docker-entrypoint-initdb.d/

#MySQL passwd and port
ENV MYSQL_ROOT_PASSWORD my-secret-pw
ENV MYSQL_DATABASE mcms
ENV MYSQL_USER mcms
ENV MYSQL_PASSWORD mcmsmcms