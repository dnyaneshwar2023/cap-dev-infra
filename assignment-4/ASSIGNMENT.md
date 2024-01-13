
## Assignment - Setup kubernetes node with k8s components  

Use the terraform code to provision the ec2 instance. (cd k8s_node; tf plan -var person_name=<your_name>;  tf apply)
Notes: 
1. Optionally provide location for public key file in `keypair_pub_file` (You need to have private key associated with that public key)
2. If you face below issue then apply the terraform plan again
```shell
Could not get lock /var/lib/apt/lists/lock - open (11: Resource temporarily unavailable)
```

Go through the terraform code to understand what is being setup. 

The instance, that tf will create, will already have the following packages configured already. 

1. Docker Engine
2. Docker CRI Shrim (cri-dockerd)
3. Kubelet v1.24.0 (as systemd service)
4. Kubeadm v1.24.0
5. Kubectl v1.24.0 

The kubectl is already configured to talk with the cluster. We have used the kubeadm tool to setup the k8s node. 

Few of the kubeadm steps are already completed during this setup mainly following phases are already executed. 

```shell
sudo kubeadm init phase preflight --v=5 --config kubeadm-config.yaml
sudo kubeadm init phase certs all --v=5 --config kubeadm-config.yaml
sudo kubeadm init phase kubeconfig all --v=5 --config kubeadm-config.yaml
sudo kubeadm init phase kubelet-start --v=5 --config kubeadm-config.yaml
sudo kubeadm init phase kubelet-finalize all --v=5 --config kubeadm-config.yaml
```
As can be seen there is a kubeadm-config.yaml file. Use that file if you need to execute any of the further Kubeadm phases (as shown above). 

Your job is make ensure following command works on this cluster (SSH into the instance to run this command). 

`kubectl run nginx --image=nginx --restart=Never`

Every time you run this command. Please note down the error and think through which k8s component is missing which leads to this error.

### Answer these questions (the questions also works as hints for the issues you may face)

1. Which component(s) is required in every node of the kubernetes cluster. (including master and worker nodes)?

2. Which component the kubectl connects to? 

3. What are static pods in kubernetes? Who manages them? What is pod manifest files? Where are the manifest files are stored?

4. Which component is using etcd? Which port the etcd runs on? How can I use etcdctl to connect and see what is stored in etcd (keys mainly)?
   (Hint: Check /registry key)

5. How are the pods created on the nodes? What all components are required? Can you demo it in the etcd?

6. What does kube-proxy and CNI is doing?

### Provide your journey of fixing in following format

- What error encountered.

- How did you discover the error

- How did you fix the error. What did you try?

- Next Error encountered (and repeat)

### Some commands you will find useful:

sudo docker ps -a # list all contaniners including stopped/exited ones. 

sudo docker logs <container_id>

sudo systemctl status <Unit_name eg kubelet>

sudo systemctl list-units # list all services available

sudo journalctl -u <Unit_name eg kubelet> --no-pager

sudo journalctl -xe --no-pager # all logs

kubectl get pods --all-namespaces # list all pods running

kubectl get nodes # get node status

Useful links:
https://v1-24.docs.kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/

https://docs.tigera.io/calico/latest/getting-started/kubernetes/quickstart


Solution: https://drive.google.com/file/d/113Tt2TSR4cKPQOnSKUAKW4F1sTZCucVo/view

My Solution: https://docs.google.com/document/d/1kQUU7f2K_tT9mJXB0DNUeEQ8bNGFS9OCtGB-krUtufo/edit?usp=sharing