FROM jenkins/jenkins:2.479.2-lts-jdk17

RUN jenkins-plugin-cli --plugins "configuration-as-code:1909.vb_b_f59a_27d013 job-dsl:1.90"
