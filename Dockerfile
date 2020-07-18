FROM tomcat:8.0-alpine
LABEL "prabu"
user root

COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

EXPOSE 8888
CMD ["catalina.sh", "run"]
