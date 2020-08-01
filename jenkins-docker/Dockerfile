FROM jenkins/jenkins

ARG DOCKER_GID

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

# Get list ofinstalled plugins:
# docker exec -it -u root jenkins ls -la /var/jenkins_home/plugins | awk '{print $9}' | grep -v .jpi
RUN /usr/local/bin/install-plugins.sh \
    ace-editor \
    antisamy-markup-formatter \
    apache-httpcomponents-client-4-api \
    authentication-tokens \
    bouncycastle-api \
    branch-api \
    build-timeout \
    cloudbees-folder \
    command-launcher \
    credentials \
    credentials-binding \
    display-url-api \
    docker-commons \
    docker-java-api \
    docker-plugin \
    docker-workflow \
    durable-task \
    email-ext \
    emailext-template \
    git \
    git-client \
    git-server \
    github \
    github-api \
    github-branch-source \
    handlebars \
    jackson2-api \
    jdk-tool \
    jquery-detached \
    jsch \
    junit \
    lockable-resources \
    mailer \
    matrix-auth \
    matrix-project \
    momentjs \
    okhttp-api \
    pam-auth \
    pipeline-build-step \
    pipeline-github-lib \
    pipeline-graph-analysis \
    pipeline-input-step \
    pipeline-milestone-step \
    pipeline-model-api \
    pipeline-model-definition \
    pipeline-model-extensions \
    pipeline-rest-api \
    pipeline-stage-step \
    pipeline-stage-tags-metadata \
    pipeline-stage-view \
    plain-credentials \
    resource-disposer \
    scm-api \
    script-security \
    ssh-credentials \
    ssh-slaves \
    structs \
    timestamper \
    token-macro \
    trilead-api \
    workflow-aggregator \
    workflow-api \
    workflow-basic-steps \
    workflow-cps \
    workflow-cps-global-lib \
    workflow-durable-task-step \
    workflow-job \
    workflow-multibranch \
    workflow-scm-step \
    workflow-step-api \
    workflow-support \
    ws-cleanup
    
USER root

# Install docker-compose
RUN apt-get update && \
    apt-get install -y python3-pip && \
    pip3 install --upgrade pip docker-compose

# Make Jenkins user capable to work with Docker MAC
RUN groupmod -g 201 dialout && \
    groupmod -g $DOCKER_GID staff && \
    usermod -aG root jenkins
# Make Jenkins user capable to work with Docker Linux
#RUN groupadd docker && \
    #groupmod -g $DOCKER_GID docker && \
    #usermod -aG docker jenkins

USER jenkins
