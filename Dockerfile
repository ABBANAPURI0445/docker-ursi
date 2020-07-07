FROM tomcat:8
ARG user
ARG password
ARG url
RUN wget --user=$user --password='$password'  $url
RUN mv *.war gol.war && cp gol.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD [ "catalina.sh","run"]
