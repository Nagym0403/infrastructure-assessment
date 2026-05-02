# Exercise 3

You will be given a simple go  
rest_1.0.zip that provides a REST endpoint 
/hello-world.

This endpoint returns a simple message in form of JSON.

```json
{
 "message": "Hello World"
}
```

This simple app is a dependency for an imaginary developer to work on his own tasks locally.

Since we do work with kubernetes, your task is to show proficiency with said technology and provide a code that is deployable without any issues on a minikube cluster so that said developer can deploy the application out of the box as a kubernetes service locally.

Ultimately you should be able to call a localhost URI that will return expected JSON response.

Said developer is not well versed in managing kubernetes, but understands basics enough to be able to write his own manifests and deploy them, as long as he has access to k8s cluster. It this case minikube for a local development.

Therefore there are bonus points for:
basic documentation
if you automate minikube provisioning for the developer
if you automate deployment of said REST service into k8s cluster so that the
said developer can run this service in minikube anytime he needs to and can focus
on his work
checks for required tooling
using local registry instead of remote (cost savings)

Tooling is up to you, only requirement is that the service is deployed on minikube and accessible from localhost URI. Feel free to use whatever will make the task easier for you and for the developer. But make sure it is common enough to be usable on
 most of operating systems.
