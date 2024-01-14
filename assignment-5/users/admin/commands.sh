# dev user
# creating a private key for the user
openssl genrsa -out admin.key 2048

# creating CSR file  (added user name as cluster-admin)
openssl req -new -key admin.key -out admin.csr

# base64 output of csr file
cat admin.csr | base64 | tr -d "\n"

# approve csr request
kubectl certificate approve admin-cert-request

# extract certificate from CSR manifest
kubectl get csr admin-cert-request -o jsonpath='{.status.certificate}'| base64 -d > admin.crt

# set custom kube config
export KUBECONFIG=~/infra/assignment-5/users/admin/kubeconfig.yaml

# resetting kubeconfig for admin
export KUBECONFIG=~/.kube/config