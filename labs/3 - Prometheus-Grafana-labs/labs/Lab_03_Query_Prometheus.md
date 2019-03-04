# Lab 3 - Explore and Query Prometheus 

This lab will guide you through navigating to your Prometheus dashboard and exploring your data with simple Prometheus queries.


## Step 1 - Navigate to Prometheus UI

Now that we've configured a proxy that provides access to your Prometheus UI, we can engage with Prometheus from the public Internet.

As specified in the proxy we deployed in Lab 2, you can access your Prometheus instance at Port 9092 of your DC/OS public agent.

Your DC/OS public agent public IP address should be listed in the cluster details you used to set up your DC/OS CLI. Please ask the instructor if you are having difficulty determining your public agent pubilc IP address.

```
http://<YOUR PUBLIC AGENT PUBLIC IP>:9092
```

Your dashboard should look like the screenshot below.

![prometheus-blank](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/prometheus-blank.png)


## Step 2 - Query Prometheus

Now that you have access to your Prometheus UI, you can start exploring your data.

Using the search bar in the Prometheus UI, run the command below to examine CPU usage.

```
cpu_usage_user
```
![prometheus-cpu_usage_user](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/prometheus-cpu_usage_user.png)

You can view a graphical representation of your data by selecting the *Graph* tab in the UI.

![prometheus-cpu_usage_user-graph](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/prometheus-cpu_usage_user-graph.png)


## Further reading

Prometheus provides a comprehensive query syntax, along with sample queries. Please visit the [Prometheus documentation](https://prometheus.io/docs/prometheus/latest/querying/examples/) for more examples.



