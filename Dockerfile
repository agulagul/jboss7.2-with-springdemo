FROM openjdk:8
ADD https://github.com/agulagul/jboss7.2-with-springdemo/releases/download/v1/jboss-eap-7.2.0.zip /opt
RUN (unzip /opt/jboss-eap-7.2.0.zip && mv /jboss-eap-7.2 /opt/jboss && rm /opt/jboss-eap-7.2.0.zip)
ADD https://github.com/agulagul/jboss7.2-with-springdemo/releases/download/v1/demo.war /opt/jboss/standalone/deployments
ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0"
CMD ["/opt/jboss/bin/standalone.sh"]
EXPOSE 80 443 8080 8443 9990 9993