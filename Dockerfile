FROM tomcat:8.0-alpine
LABEL "senthil"
user root

COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

RUN mkdir /usr/local/tomcat/webapps/build/
RUN mkdir /usr/local/tomcat/webapps/build/static/
RUN mkdir /usr/local/tomcat/webapps/build/static/css/
RUN mkdir /usr/local/tomcat/webapps/build/static/js/

COPY $WORKSPACE/build/* /usr/local/tomcat/webapps/build/
COPY $WORKSPACE/build/static/css/*.css /usr/local/tomcat/webapps/build/static/css/
COPY $WORKSPACE/build/static/js/*.js /usr/local/tomcat/webapps/build/static/js/

EXPOSE 8080
CMD ["catalina.sh", "run"]
