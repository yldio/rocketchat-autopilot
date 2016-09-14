FROM mongo:3.2

# Get curl for the health check
RUN apt-get update && apt-get install -y curl

# get ContainerPilot release
ENV CONTAINERPILOT_VERSION 2.1.2
ENV CONTAINERPILOT file:///etc/containerpilot.json

RUN export CP_SHA1=c31333047d58ba09d647d717ae1fc691133db6eb \
    && curl -Lso /tmp/containerpilot.tar.gz \
         "https://github.com/joyent/containerpilot/releases/download/${CONTAINERPILOT_VERSION}/containerpilot-${CONTAINERPILOT_VERSION}.tar.gz" \
    && echo "${CP_SHA1}  /tmp/containerpilot.tar.gz" | sha1sum -c \
    && tar zxf /tmp/containerpilot.tar.gz -C /bin \
    && rm /tmp/containerpilot.tar.gz

COPY etc/containerpilot.json /etc

ENTRYPOINT []
CMD [ "/bin/containerpilot", "mongod", "--smallfiles", "--oplogSize", "128" ]
