FROM jenkins/jenkins:2.479.2-lts-jdk17

RUN jenkins-plugin-cli --plugins "configuration-as-code:1909.vb_b_f59a_27d013"
RUN jenkins-plugin-cli --plugins "job-dsl:1.90"
RUN jenkins-plugin-cli --plugins "workflow-aggregator:600.vb_57cdd26fdd7"
RUN jenkins-plugin-cli --plugins "git:5.6.0"
