FROM centos7-dev

RUN wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py

RUN yum install -y zlib-devel openssl-devel && \
    wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz && \
    tar zxvf Python-3.6.5.tgz && \
    cd Python-3.6.5 && \
      ./configure && \
      make && \
      make install && \
      cd .. && \
    rm -rf Python-3.6.5
