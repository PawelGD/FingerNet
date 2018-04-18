FROM ubuntu
MAINTAINER PawelGD

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    build-essential \
    ca-certificates \
    cmake \
    gcc \
    git \
    libglib2.0-dev \
    libpq-dev \
    make \
    nano \
    python-pip \
    python2.7 \
    python2.7-dev \
    python-opencv \
    ssh \
    vim \
    && apt-get autoremove \
    && apt-get clean

RUN pip install -U setuptools
RUN pip install -U pip
RUN pip install -U virtualenv
RUN pip install -U numpy
RUN pip install -U scipy
RUN pip install -U matplotlib
RUN pip install -U pydot
RUN pip install -U graphviz
RUN pip install -U Pillow
RUN pip install -U h5py
RUN pip install -U "tensorflow==1.0.1"
RUN pip install -U "keras==2.0.2"

RUN git clone https://github.com/PawelGD/FingerNet.git /home/fingernet/
RUN chmod +x /home/fingernet/src/extract.py

CMD []