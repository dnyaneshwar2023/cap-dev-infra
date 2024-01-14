# dev user
# creating a private key for the user
openssl genrsa -out dev.key 2048

# creating CSR file 
openssl req -new -key dev.key -out dev.csr

# base64 output of csr file
cat dev.csr | base64 | tr -d "\n"

# approve csr request
kubectl certificate approve dev-request

# extract certificate from CSR manifest
kubectl get csr dev-request -o jsonpath='{.status.certificate}'| base64 -d > dev.crt

# set custom kube config
export KUBECONFIG=~/infra/assignment-5/users/dev/kubeconfig.yaml

# resetting kubeconfig for admin
export KUBECONFIG=~/.kube/config

# update kubeconfig with user client creds
kubectl config set-credentials dev --client-key=dev.key --client-certificate=dev.crt --embed-certs=true
