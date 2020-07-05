FROM tomcat:8
ARG jfrogurl
RUN wget --user=admin --password='admin123'  $frogurl
RUN mv *.war gameoflife.war && cp gameoflife.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD [ "catalina.sh","run"]
