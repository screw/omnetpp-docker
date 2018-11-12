FROM omnet:latest

RUN cd && mkdir -p git && cd git/ && \
    git clone --recursive https://github.com/screw/inet.git && \
    cd inet && \
    git checkout -b dmpr origin/dmpr  && \
    make makefiles  && \
    make -j $(nproc)



#ENTRYPOINT ["rq", "worker", "--results-ttl", "60"]
