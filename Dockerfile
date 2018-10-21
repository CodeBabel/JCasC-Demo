FROM jenkins/jenkins:lts
# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
RUN /usr/local/bin/install-plugins.sh configuration-as-code
ENV CASC_JENKINS_CONFIG 