# Blog 3 [9.27.2019]

### Lab 3 - Prometheus  

Running the command wget reminded me that I have to install updates and such.

![wget](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/wget-not-found.PNG)

I was able to retrieve the file after updating and installing all the necessary binaries. I ran the configuration file and was able to see the pages mentioned in the lab. Reminder to myself that localhost doesn't work on a Windows host. http://192.168.99.100:9090

![config](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/prome-config.PNG)

Just to make sure that prometheus was running, I went to the metrics page.

![metrics](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/prome-metrics.PNG)

I was able to view the total handler requests with ```promhttp_metric_handler_requests_total```
![metrics_total](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/prome-total-metrics.PNG)

... but not able to run ```promhttp_metric_handler_requests_total{code=”200”}```
![invalid_query](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/prome-query.PNG)

I had to retype the quotation marks for it to work. It returned value 57.

I assume the next query ended the entire line with a closed parenthesis. Otherwise it would return an error.
```
rate(promhttp_metric_handler_requests_total{code="200"} [1m])
```
![missing-close](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/prome-rate-200.PNG)

Since the second part of the lab involves creating a new container I realised that I would have two containers with random names.
```docker rename``` renames a currently existing container.

Creating a new container I also learned you cannot expose ports on an already existing container. New container must be made in order to expose ports. To expose more than one port provide multiple arguments.
```
docker container run -it -p 9090:9090 -p 9100:9100 ubuntu:latest bash
```

wget https://github.com/prometheus/node_exporter/releases/download/v0.18.1/node_exporter-0.18.1.linux-amd64.tar.gz


Picture of the second stage of the lab:
![cpu_second](https://raw.githubusercontent.com/cacaocat-syr/cacaocat-syr.github.io/master/Images/prome_cpu_sec_total.PNG)