# FROM ubuntu:latest
# ADD jboss-eap-7.2 /opt/jboss/
# ADD openjdk-8u262-b10-linux-x64.tar.gz /opt/
# RUN (mv /opt/openlogic-openjdk-8u262-b10-linux-64 /opt/openjdk-8)
# ENV JAVA_HOME="/opt/openjdk-8" \
#     JBOSS_HOME="/opt/jboss"
# ADD demo.war /opt/jboss/standalone/deployments
# ENV PATH="${JAVA_HOME}/bin:${PATH}" \
#     JAVA_OPTS="-Djava.net.preferIPv4Stack=true -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0"
# CMD ["/opt/jboss/bin/standalone.sh"]

FROM openjdk:8
# ADD jboss-eap-7.2 /opt/jboss
ADD https://developers.redhat.com/download-manager/file/jboss-eap-7.2.0.zip /opt/jboss
ADD demo.war /opt/jboss/standalone/deployments
ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0"
CMD ["/opt/jboss/bin/standalone.sh"]
EXPOSE 80 443 8080 8443 9990 9993