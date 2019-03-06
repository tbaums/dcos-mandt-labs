## Lab 3 - Scaling Your Kuberenetes Cluster (adding more Kubelets)

Sometimes you need more Kubernetes infrastructure to run more applications. DC/OS can easily scale the cluster. 

There are several ways to scale Kubernetes in DC/OS, including via the CLI, HTTP API, or GUI. In this exercise, we will use the DC/OS GUI to scale our Kubernetes cluster.


From the UI, go to Services > Kubernetes.

![](https://github.com/tbaums/dcos-mandt-labs/blob/master/screenshots/select-k8s-edit.png)

Next, choose "Edit" in top right. 

![](https://github.com/tbaums/dcos-mandt-labs/blob/master/screenshots/select-k8s-1.png)

Under "kubernetes" in left hand menu, change the number of "node count" to 2.

![](https://github.com/tbaums/dcos-mandt-labs/blob/master/screenshots/increase-kubelet-count.png)

You will observe that the scheduler task updates, followed by `etcd`. Lastly, the new Kubelet will start up and join the Kubernetes cluster.

![](https://github.com/tbaums/dcos-mandt-labs/blob/master/screenshots/kubelet-starting.png)


