# 添加依赖的基础镜像，这里按照Ubuntu作为例子做演示
FROM ubuntu

# 将本地文件拷贝至进行中
ADD ./target/test-1.0-SNAPSHOT.jar app.jar

# 安装jdk
RUN apt-get update
RUN apt-get install -y default-jre
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/bin/java
RUN echo $JAVA_HOME

# 执行启动命令
ENTRYPOINT ["java","-jar","/app.jar", "&"]