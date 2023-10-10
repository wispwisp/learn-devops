# kubernetes notes


## dockerfile
* entrypoint - executable
* cmd - its flags 

ex:

```Dockerfile
FROM alpine
ENTRYPOINT ["ping"]
CMD ["127.0.0.1"]
```

```bash
$ docker run --rm --name simple_ping simple_ping
# ->
# PING 127.0.0.1 (127.0.0.1): 56 data bytes

$ docker run --rm --name simple_ping simple_ping ya.ru
# ->
# PING ya.ru (5.255.255.242): 56 data bytes
```


## docker 
volume:

`--mount type=volume,source=./data,destination=/data`


## kuber

### minikube

`minikube start`

`minikube delete --all`

### kubectl

`kubectl get po -A`

`kubectl get events`

`kubectl get po`
* `--show-labels`
* `-w` in realtime watch

`kubectl create -f <file-name>.yaml`

`kubectl delete -f <file-name>.yaml`

`kubectl delete all --all`


update file, then:

`kubectl apply -f <file-name>.yaml`

### docs:

`kubectl explain deployment`

`kubectl explain deployment.spec`

`kubectl explain deployment.spec.template`

`kubectl completion -h | grep bash`
* `sudo yum -y install bash-completion`
* `source <(kubectl completion bash)`

`kubectl describe pod <pod-name>`

`kubectl rollout undo deployment <deployment-name>`
* `--to-revision=1` two revisions back

