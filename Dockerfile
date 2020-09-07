FROM tomcat:8.0-alpine
LABEL name="prabu"
LABEL version="1.0"
LABEL description="Custom docker tomcat generic image"
user root
COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8888
CMD ["catalina.sh", "run"]
