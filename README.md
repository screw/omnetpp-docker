# omnetpp-docker
Experimenting with docker

Intended usage:

First, build the omnet requirements image

docker build -f omnet-req.dockerfile -t omnet-req:v6.0 -t omnet-req:latest .

Second, build specific OMNeT++ version

docker build -f omnet-req.dockerfile -t omnet-req:latest -t omnet-req:v6.0pre2

Third, build specific INET

docker build -f omnet-inet.dockerfile -t omnet-inet:6.0pre2-4.0 -t ommnet-inet:latest


