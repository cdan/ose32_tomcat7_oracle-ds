FROM registry.example.com:5000/jboss-webserver-3/webserver30-tomcat7-openshift:1.2

ADD ojdbc6.jar /opt/webserver/lib/ojdbc6.jar
ADD launch.sh /opt/webserver/bin/launch.sh

USER 0
RUN chmod +x /opt/webserver/bin/launch.sh

USER 185
CMD ["/opt/webserver/bin/launch.sh"]