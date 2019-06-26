FROM ubuntu
COPY run.sh /root/
RUN /bin/bash -c 'chmod +x /root/run.sh'
RUN /bin/bash -c '/root/./run.sh'
