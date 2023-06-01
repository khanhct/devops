#!/bin/bash
source ./.env

echo "Cleaning...${JENKINS_LOCAL_HOME}, ${NGINX_LOGS}"
rm -rf ${JENKINS_LOCAL_HOME} ${NGINX_LOGS}

echo "Initializing..."
mkdir ${JENKINS_LOCAL_HOME}
mkdir -p ${NGINX_LOGS}

docker-compose build