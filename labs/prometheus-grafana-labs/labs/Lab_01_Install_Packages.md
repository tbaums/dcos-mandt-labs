# Lab 1 - Install Marathon-LB, Prometheus, and Grafana

Note: These lab exercises assume you have a working DC/OS cluster and have successfully attached the DC/OS CLI to that cluster. 


## Step 1 - Install Marathon-LB 

_If you are undertaking these lab exercises as part of a broader DC/OS days workshop, you may already have Marathon-LB installed on a public node in your cluster. If you already have Marathon-LB installed, please skip this step._

Marathon-LB is an easy-to-use, HAProxy-based load balancer most commonly used to expose services running on DC/OS to the public Internet.

To install Marathon-LB on DC/OS, first navigate to the *Catalog* tab in your DC/OS UI.

![catalog-tab](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/catalog-tab.png)


In the search box, search for `marathon-lb` and select *marathon-lb*.

![marathon-search](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/marathon-search.png)

Next, click *Review & Run* to open the configuration settings for your new Marathon-LB instance.

![marathon-review-and-run](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/marathon-review-and-run.png)

Without making any changes to the configuration, click *Review and Run* again.

![marathon-review-and-run-2](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/marathon-review-and-run-2.png)

As a last step, click *Run Service*.

![marathon-run-service](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/marathon-run-service.png)

In the *Services* tab of the DC/OS GUI, you should now see Marathon-LB starting up.

![marathon-booting-up](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/marathon-booting-up.png)


## Step 2 - Install Prometheus

As in Step 1, navigate to the *Catalog* tab in the DC/OS UI.

In the search box, search for `prometheus` and click the package.

![prometheus-search](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/prometheus-search.png)

Next, click *Review and Run*.

![prometheus-review-and-run](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/prometheus-review-and-run.png)

Without changing the configuration, click *Review and Run*.

![prometheus-review-and-run-2](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/prometheus-review-and-run-2.png)

To begin the installation, click *Run Service*.

![prometheus-run-service](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/prometheus-run-service.png)

In the *Services* tab of the DC/OS GUI, you should now see Prometheus starting up.

## Step 3 - Install Grafana

As in steps 1 and 2, navigate to the *Catalog* tab in the DC/OS UI.

In the search box, search for `grafana` and click the package.

![grafana-search](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-search.png)

Next, click *Review and Run*.

![grafana-review-and-run](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-review-and-run.png)

Without changing the configuration, click *Review and Run*.

![grafana-review-and-run-2](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-review-and-run-2.png)

To begin the installation, click *Run Service*.

![grafana-run-service](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-run-service.png)

In the *Services* tab of the DC/OS GUI, you should now see Grafana starting up.