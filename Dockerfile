FROM jenkins/jenkins:2.479.2-lts-jdk17

USER root
RUN apt-get update && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins

RUN jenkins-plugin-cli --plugins "configuration-as-code:1909.vb_b_f59a_27d013"
RUN jenkins-plugin-cli --plugins "job-dsl:1.90"
RUN jenkins-plugin-cli --plugins "workflow-aggregator:600.vb_57cdd26fdd7"
RUN jenkins-plugin-cli --plugins "git:5.6.0"
RUN jenkins-plugin-cli --plugins "jobConfigHistory:1283.veb_dfb_00b_5ec0"
RUN jenkins-plugin-cli --plugins "docker-workflow:580.vc0c340686b_54"

# RUN jenkins-plugin-cli --plugins "docker-plugin:1.7.0"
# You may not need this one
