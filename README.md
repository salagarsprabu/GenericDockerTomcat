# Docker
Steps
Install Docker.
Clone this repository - $git clone https://github.com/softwareyoga/docker-tomcat-tutorial.git
cd 'docker-tomcat-tutorial'
$docker build -t mywebapp .
$docker run -p 80:8080 mywebapp
http://localhost:80
