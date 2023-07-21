#!/bin/bash

docker pull gitlab/gitlab-ce

export GITLAB_HOME=$(pwd -P)/gitlab_data

docker run --detach \
  --hostname gitlab.example.com \
  --publish 4443:443 --publish 8080:80 --publish 2222:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  --shm-size 256m \
  gitlab/gitlab-ce:latest

# Visit the GitLab URL, and sign in with the username root and the password from the following command:
# (The password file will be automatically deleted in the first reconfigure run after 24 hours.)
docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
# user: root

