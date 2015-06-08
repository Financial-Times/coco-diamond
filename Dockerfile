FROM lesaux/diamond-containercollector
ADD diamond/diamond.conf /etc/diamond/diamond.conf
ADD diamond/collectors/DockerContainerCollector.conf /etc/diamond/collectors/DockerContainerCollector.conf
