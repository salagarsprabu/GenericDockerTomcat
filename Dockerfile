FROM tomcat:8.0-alpine
LABEL maintainer="baikuntha"

COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY build /usr/local/tomcat/webapps/build
EXPOSE 8888
CMD ["catalina.sh", "run"]
