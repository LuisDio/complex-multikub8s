A simple complex app with kub8s cluster

### Creating a Secret

Through the use of imperative command

```
kubectl create secret generic <secret_name> --from-literal key=value
```
where
```
create --> imperative command to create a new object

secret --> type of object we are going to create

generic --> type of secret(as example generic, tls, docker-registry)

<secret_name> --> Name of secret, for later reference in a pod config

--from-literal --> We are going to add the secret information into this command, as opposed to from . file

key=value --> Key-value pair of the secret information
```
```
kubectl get secrets
```

```
minikube dashboard -->  dashboard
```
