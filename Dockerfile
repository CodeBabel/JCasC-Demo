FROM jenkins/jenkins:lts
# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
RUN /usr/local/bin/install-plugins.sh configuration-as-code configuration-as-code-support git mstest matrix-auth workflow-aggregator docker-workflow blueocean credentials-binding
ENV CASC_JENKINS_CONFIG https://raw.githubusercontent.com/CodeBabel/JCasC-Demo/master/Jenkins-JCasC.yml