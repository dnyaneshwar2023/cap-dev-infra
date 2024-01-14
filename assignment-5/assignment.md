
## Assignment - k8s authn, Authz 

There are multiple dev's in the dev team. All of these people require access to the k8s cluster. The devs should be accessing the cluster with their client certificate. Every user should have their own client certificate (no cert sharing allowed).
You will have to share the list of commands along with the appropriate certificates (including client cert and CA cert) to the dev team to setup kube config file for them.

All devs need same set of permissions. Ideally you should maintain one set of permissions and assign these permissions to all. Don't maintain multiple copies of the permissions per user.

Most of the work on the cluster is automated and changes should ideally be done only though CI/CD and automation changes.
Too much permissions might allow the dev to diverge the cluster state away from the automation (Possibly breaking the automation during next changes). Even that is the case, there are certain permissions which will be required by the dev people. Eg. looking at a pod log.

Your job is to come up with list of permissions that will be useful for the dev but will still ensure that most of the tasks are done through automation. Create the appropriate permissions and the roles so that dev will have the cluster access.

Assume that CI/CD is already in place (you don't need to work on this). Assume that CI/CD permissions are also in place (you don't need to create any users or permissions for CI/CD etc.). You only goal is to provide access to the dev group.

### Notes
- Use local k8s setup.
- Note down all the steps followed.
- Separate out the kubeconfig that is by default created/updated by minikube from the dev kubeconfig. You can point to a different kubeconfig by setting `KUBECONFIG` variable and pointing it to file location. (Assume that Admin and dev are on two different machines)
- Use separate private keys for Admin and dev user.
- List of ways you identified the list of permissions including the kubectl commands or API doc etc.

### Questions to answer:
- How encryption is done? How public and private key work as part of this?
- What is the need for the certificate?
- What is a certificate?
- What is client/server certificate?
- What is a CSR?
- What is certificate signing? how does it work?
- What is a CA? Why do you need it?