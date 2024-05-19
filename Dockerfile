FROM jenkins/jenkins:lts-jdk17
#add plugins into jenkins image
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt
#copy seed job to jenkins location
COPY seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml
#skip jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false