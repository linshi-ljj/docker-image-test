# ��������Ļ����������ﰴ��Ubuntu��Ϊ��������ʾ
FROM ubuntu

# �������ļ�������������
ADD ./target/test-1.0-SNAPSHOT.jar app.jar

# ��װjdk
RUN apt-get update
RUN apt-get install -y default-jre
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/bin/java
RUN echo $JAVA_HOME

# ִ����������
ENTRYPOINT ["java","-jar","/app.jar", "&"]