FROM lesaux/diamond-containercollector
COPY diamond/diamond.conf /etc/diamond/diamond.conf
COPY diamond/collectors/DockerContainerCollector.conf /etc/diamond/collectors/DockerContainerCollector.conf
COPY entrypointWrapper.sh /
RUN chmod +x /entrypointWrapper.sh

# remove the entry point and add a cmd
ENTRYPOINT []
CMD ["/entrypointWrapper.sh"]