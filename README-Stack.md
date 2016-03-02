#基于Dockerfile部署应用的注意事项
![Docker-container](http://a.oss.yihuonet.com/storage/Docker-container.png)（JavaCMS系统专用）      
更新于：2016/3/2 13:59:35    | E-mail:kai.zhu#yihuonet.com (替换#为@)    
本文适用于一次性自动创建两个容器，分别是程序和数据库容器。授权程序容器访问数据库容器，以完成一个完整应用Stack的构建。

##1.创建过程
登陆Daocloud面板，选择应用编排。创建新Stack。    
![Daocloud-Stack-guide1](http://a.oss.yihuonet.com/storage/guide-book/Stack/Stack-guide1.png)    
如图进行填写，有三处地方需要填写。    
![Daocloud-Stack-guide2](http://a.oss.yihuonet.com/storage/guide-book/Stack/Stack-guide2.png)    
分别是：    

A.**Stack名称**，我们统一规范为：mcms-系列名称，例如mcms-general-1、mcms-education-2这样。这里的系列名称在之前创建程序和数据库的镜像时，已经设好。下面写Docker Compose YML文件时会引用之前创建的程序和数据库镜像。    

B.**Docker Compose YML**，内容安装代码模板（见下图红色框出区域）进行简单修改。    
![Daocloud-Stack-guide3](http://a.oss.yihuonet.com/storage/guide-book/Stack/Stack-guide3.png)    

附代码模板供使用：    

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
      volumes:
      - /data/mcms-general-1/upload:/usr/local/tomcat/webapps/ROOT/upload
    db:
      image: daocloud.io/yihuo/mcms-general-1-mysql
      restart: always
      expose:
      - '3306'
      volumes:
      - /data/mcms-general-1/mysql:/var/lib/mysql

C.**选择主机**，选择需要运行的服务器或服务器集群即可。    
然后，就没有然后了。等3-5分钟自动创建完镜像，即可使用。

##2.原理
###程序部分：    
首先 `program` 声明下面代码属于程序的容器构建部分。    
`image: daocloud.io/yihuo/mcms-general-1` 基于JavaCMS的程序模板“general-1”（通用一模板程序）。那么mcms-general-1这个镜像做了什么事情？首先它基于Ubuntu操作系统的官方Docker镜像安装OpenJDK1.7，然后安装Tomcat7.0.68（后续版本可能会升级）。程序运行环境构建完成后，自动的将程序包从指定位置wget到容器中并Deploy。最终执行Tomcat启动脚本，运行容器。        
设置 `restart: always` 配置项，当应用崩溃时自动重新启动。    
`links：db` 表示将program创建的容器与下面的db容器建立关联。（为什么？因为我们的程序需要连接MySQL数据库才能运行。）    `ports:'8080'`表示开放TCP8080端口，通过IP或域名+Port8080可以访问。    
`environment`设定了本程序运行的环境变量，分别为设定MySQL的数据库用户名、密码、数据库JDBC地址。`YIHUONET_MCMS_MYSQL_USER`，`YIHUONET_MCMS_MYSQL_USER_PASS`，`YIHUONET_MCMS_MYSQL_JDBC`。此外，有一个`VIRTUAL_HOST`的环境变量，这个环境变量是Docker镜像库中Nginx-Proxy需要提供的环境变量，用于将Docker的访问方式从IP/Domain+Port变为直接用IP/Domain访问。    

###数据库部分：    
其次 `db` 声明下面代码属于数据库的容器构建部分。    
`image: daocloud.io/yihuo/mcms-general-1-mysql` 基于JavaCMS的数据库模板“general-1-mysql”（通用一数据库）。这个镜像完成了基于Mysql-server的官方Docker镜像，创建mcms数据库用户以及同名的数据库，并授权mcms用户对mcms数据库具有完全的权限。并将general-1的sql文件导入mcms数据库。    
设置 `restart: always` 配置项，当应用崩溃时自动重新启动。 
`expose:'3306'`表示开放TCP3306端口，但此处的开放端口仅限于program这个容器有权限访问，不可从外部进行访问。从而保证了安全性问题。   

###关于Volumes的特殊说明：    
上述均涉及到`volumes`的配置项，我们设置volumes的作用：    
A.将程序中的upload目录永久保存在宿主机的本地目录中，避免Docker容器重启后丢失文件。相当于mount进入Docker容器中；    
B.将数据库的存储目录/var/lib/mysql目录内容永久保存在宿主机的本地目录中。一旦Mysql容器重启，将自动根据/var/lib/mysql数据库进行初始化，不再执行Mysql镜像中的生成用户、授权和数据库初始化操作。

