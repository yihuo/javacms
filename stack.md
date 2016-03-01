program:
  image: daocloud.io/yihuo/mcms-general-1
  restart: always
  links:
  - db
  ports:
  - '8080'
  environment:
  - YIHUONET_MCMS_MYSQL_USER=mcms
  - YIHUONET_MCMS_MYSQL_USER_PASS=mcmsmcms
  - YIHUONET_MCMS_MYSQL_JDBC=jdbc:mysql://db:3306/mcms?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull
  - VIRTUAL_HOST=general-1.s2.yihuonet.com
db:
  image: daocloud.io/yihuo/mysql-base
  restart: always
  expose:
  - '3306'
