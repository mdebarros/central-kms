# Running central-kms on Kubernetes


1. Install VirtualBox
    Refer to: https://www.virtualbox.org/wiki/Downloads

2. Install Docker
    MacOS: `brew install docker`

3. Install Kubectl
    MacOS: `brew install kubectl`

4. Install Minikube
    MacOS: `brew cask install minikube`

5. Install Helm
    MacOS: `brew install kubernetes-helm`

6. Initialise MiniKube
    `minikube start`

7. Initialise Helm
    `helm init`

8. Deploy Ingress
    `?`

9. Configure PostgreSQL
    Edit `postgresUser` & `postgresPassword` as desired in the follow file `./k8s/central-kms-helm-postgresql-values.yaml` 

10. Deploy PosgreSQL
    `helm install --name central-kms -f ./k8s/central-kms-helm-postgresql-values.yaml stable/postgresql`

11. Configure credentials in the Central-kms-secret
    Edit `db.username` & `db.password` as done in step 10 above in the following file `./k8s/central-kms-secret.yaml`. 
    
    Ensure the values are base64 encoded.

12. Deploy Central-kms
    `kubectl create -f ./k8s`

13. Add the following to your hosts file
`<IP>	registry.local central-kms.local`

Where `<IP>` can be attained using the following command `minikube ip`

14. Open K8s Dashboard

`minikube dashboard`
