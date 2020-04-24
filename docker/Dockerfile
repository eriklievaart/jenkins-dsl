FROM jenkins/jenkins:2.230

USER root
RUN apt-get update && apt-get install -y less vim tree

# Install Jenkins plugins
USER jenkins
COPY docker/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Skip setup wizard
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"
ENV CASC_JENKINS_CONFIG=/data/jenkins/configuration.yaml


