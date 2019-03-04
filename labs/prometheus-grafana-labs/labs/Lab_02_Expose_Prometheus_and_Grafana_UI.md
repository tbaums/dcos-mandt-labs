# Lab 2 - Expose the Prometheus UI and Grafana UI using Marathon-LB

In order to access the Prometheus UI and Grafana UI from a public URL, we must configure Marathon-LB to expose them publicly.

While not recommended for production use, DC/OS provides an easy way to expose services using Marathon-LB. 

As you will see below, you will deploy a minimal Mesos container (defined only by JSON) that will route traffic from specified ports on the DC/OS public agent to the internally load-balanced service address within your DC/OS cluster. If your cluster has more than 1 public agent,you must use the public IP of the public agent where Marathon-LB is running.


## Step 1 - Install Proxy

In the *Services* tab of the DC/OS UI, click the `+` button in the top right. 

![proxy-add](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/proxy-add.png)


Select *Single Container*.

![proxy-single-container](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/proxy-single-container.png)



Toggle the *JSON Editor* switch to expose the JSON configuration editor.

![proxy-json-editor](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/proxy-json-editor.png)


Next, delete the JSON currently in the editor and copy and paste the JSON below into the editor. 


```
{
  "id": "/prometheus-proxy",
  "instances": 1,
  "cpus": 0.001,
  "mem": 16,
  "cmd": "tail -F /dev/null",
  "container": {
    "type": "MESOS"
  },
  "portDefinitions": [
    {
      "protocol": "tcp",
      "port": 0
    },
    {
      "protocol": "tcp",
      "port": 0
    },
    {
      "protocol": "tcp",
      "port": 0
    },
    {
      "protocol": "tcp",
      "port": 0
    }
  ],
  "labels": {
    "HAPROXY_GROUP": "external",
    "HAPROXY_0_MODE": "http",
    "HAPROXY_0_PORT": "9092",
    "HAPROXY_0_BACKEND_SERVER_OPTIONS": "server prometheus prometheus.prometheus.l4lb.thisdcos.directory:9090",
    "HAPROXY_1_MODE": "http",
    "HAPROXY_1_PORT": "9093",
    "HAPROXY_1_BACKEND_SERVER_OPTIONS": "server alertmanager alertmanager.prometheus.l4lb.thisdcos.directory:9093",
    "HAPROXY_2_MODE": "http",
    "HAPROXY_2_PORT": "9091",
    "HAPROXY_2_BACKEND_SERVER_OPTIONS": "server pushgateway pushgateway.prometheus.l4lb.thisdcos.directory:9091",
    "HAPROXY_3_MODE": "http",
    "HAPROXY_3_PORT": "9094",
    "HAPROXY_3_BACKEND_SERVER_OPTIONS": "server grafana grafana.grafana.l4lb.thisdcos.directory:3000"
  }
}
```

As in lab 1, click *Review & Run*, then click *Run service* on the following page to start the container.

![proxy-run-service](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/proxy-run-service.png)