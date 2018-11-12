FROM ubuntu:16.04


RUN apt-get update -y && apt-get install -y build-essential gcc g++ bison flex perl \
python python3 qt5-default libqt5opengl5-dev tcl-dev tk-dev \
libxml2-dev zlib1g-dev default-jre doxygen graphviz libwebkitgtk-1.0

RUN apt-get install -y python3-minimal python3-pip \
      build-essential bison flex libxml2-dev zlib1g-dev python-minimal wget

RUN apt-get install -y \
  qt5-default \
  qt5-qmake \
  qtbase5-dev

RUN apt-get install -y git-all
#RUN pip3 install --upgrade pip && pip3 install rq
RUN  pip3 install rq

# These are necessary to make Click in rq happy.
# See: http://click.pocoo.org/5/python3/#python-3-surrogate-handling
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8


