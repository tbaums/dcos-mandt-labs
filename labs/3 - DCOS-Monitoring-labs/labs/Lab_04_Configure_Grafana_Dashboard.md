# Lab 4 - Configure and Explore Grafana 

This lab will guide you through navigating to your Grafana dashboard, configuring Prometheus as the data source for Grafana, and configuring Grafana to visualize your data in a tidy dashboard.


## Step 1 - Navigate to Grafana UI

In Lab 2, you configured a proxy that provides access to your Grafana UI. This allows you to engage with Grafana from the public Internet.

As specified in the proxy we deployed in Lab 2, you can access your Prometheus instance at Port 9094 of your DC/OS public agent.

Your DC/OS public agent public IP address should be listed in the cluster details you used to set up your DC/OS CLI. Please ask the instructor if you are having difficulty determining your public agent pubilc IP address.

```
http://<YOUR PUBLIC AGENT PUBLIC IP>:9094
```

## Step 2 - Log in

Once you've arrived at your Grafana service from the public internet, you must log in with the following credentials:

- Username: `admin`
- Password: `admin`

![grafana-login](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-login.png)


## Step 3 - Configure Prometheus as the data source for Grafana

Now that you're logged in, you need to add Prometheus as a data source for your Grafana to utilize.

Click *Add data source*.

![grafana-add-data-source](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-add-data-source.png)


Now, fill in the data sources form with the following information:

- Name: `Prometheus`
- Type: `Prometheus`
- URL: ` http://prometheus-0-server.prometheus.autoip.dcos.thisdcos.directory:1025`

Click *Save & Test* when you have entered the information above. You should see a green box with a message confirming that the data source is properly connected.

![grafana-data-source-config](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-data-source-config.png)

## Step 4 - Import and explore your custom Grafana dashboard

From the data source page, hover over the `+` button in the left navigation pane. Select *Import* from the drop-down menu.

![grafana-import](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-import.png)


Next, you'll need to download the JSON file that contains your pre-configured Grafana dashboard specifications. 

[`grafana-dashboard.json`](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/grafana-dashboard.json)

From the Grafana import screen, click *Upload .json file* and point it to your `grafana-dashboard.json` file.

![`grafana-upload-json`](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-upload-json.png)

Lastly, select *Prometheus* from the list of data sources. 

![`grafana-select-prometheus`](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-select-prometheus.png)

You now have a working Grafana dashboard visualizing your DC/OS cluster data!

![`grafana-dashboard-complete`](https://github.com/tbaums/dcos-days-prometheus-grafana-labs/blob/master/screenshots/grafana-dashboard-complete.png)


## Further reading

For further information about the DC/OS metrics that are available for Prometheus, Grafana, and other monitoring/visualization tools to use, please visit https://docs.mesosphere.com/1.12/metrics/reference/.