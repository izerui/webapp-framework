webapp-framework
================

这是一个使用maven 多模块模块构建的 spring web 项目模板

单个maven项目模板请移步:  [GettingStarted][1].

## 技术组件
该工程采用:

* Spring MVC
* JPA
* Hibernate
* Spring Data JPA
* Spring Security
* Apache Tiles
* SLF4J
* Logback
* Joda-Time
* jQuery
* Bootstrap

![screen shot][2]


  [1]: https://github.com/making/spring-webapp-template/wiki/GettingStarted
  [2]: https://raw.github.com/making/spring-webapp-template/master/wiki/images/screen08.png
  
如何使用?
==========

step 1. clone the project
-
git clone https://github.com/izerui/webapp-framework.git

![图示0](https://github.com/izerui/webapp-framework/blob/master/maven/resources/0.png?raw=true)

step 2. import into the ide
-
![导入](https://github.com/izerui/webapp-framework/blob/master/maven/resources/1.png?raw=true)
![选取maven工程](https://github.com/izerui/webapp-framework/blob/master/maven/resources/2.png?raw=true)
![添加到set集合](https://github.com/izerui/webapp-framework/blob/master/maven/resources/3.png?raw=true)
![完成](https://github.com/izerui/webapp-framework/blob/master/maven/resources/4.png?raw=true)

项目启动
=
mvn jetty:run 或者 tomcat:run

如果使用eclipse m2e插件调试.最好使用最新版本,并且安装扩展插件(方便源码调试)
-

m2e:
-
http://download.eclipse.org/technology/m2e/releases

m2e-extras:
-
http://ifedorenko.github.com/m2e-extras/