FROM xmarek02/omnet-req:v5.4.1


WORKDIR /opt/


RUN wget https://github.com/screw/omnetpp-docker/releases/download/v5.4.1/omnetpp-5.4.1-src-linux.tgz
RUN tar zxf omnetpp-5.4.1-src-linux.tgz && rm omnetpp-5.4.1-src-linux.tgz


ENV PATH /opt/omnetpp-5.4.1/bin:$PATH

WORKDIR omnetpp-5.4.1
RUN ./configure WITH_TKENV=no WITH_QTENV=yes WITH_OSG=no WITH_OSGEARTH=no
RUN make MODE=release -j $(nproc)
WORKDIR /opt/


# These are here just to speed up recompiling the same model code.
# In fact, they should be merged into the apt-get install and ENV
# lines above to reduce image size, and avoid problems, but I think
# it's clearer this way.
RUN apt-get install ccache -y
ENV PATH /usr/lib/ccache:$PATH


#ENTRYPOINT ["rq", "worker", "--results-ttl", "60"]
