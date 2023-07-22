# gitlab


## start
`MY_COMPOSE_GITLAB_HOME=$(pwd -P) docker-compose up`

Visit the GitLab URL, and sign in with the username root and the password from the following command
_(The password file will be automatically deleted in the first reconfigure run after 24 hours. initial user: `root`)_:

`docker exec -it gitlab_web_1 grep 'Password:' /etc/gitlab/initial_root_password`


## runner

Get token fron CI/CD UI in gitlab web:
`docker exec -it gitlab_runner_1`

Inside container:
```
gitlab-runner register --url http://web:8929 --token <...>
```


### Seaprate runner
```
docker run --rm --network gitlab_default --name runner1 gitlab/gitlab-runner:alpine
docker exec -it runner1 /bin/bash
```

After, register with commands above.

(Attention - after register runner, redirection goes to 'web' URI in browser. Just change to localhost).

