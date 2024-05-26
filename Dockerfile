FROM jenkins/jenkins:lts-jdk17
USER root
RUN curl -sSL https://get.docker.com/ | sh
#add docker group to jenkins

USER jenkins
#add plugins into jenkins image
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt
#copy seed job to jenkins location
COPY seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml
#skip jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false