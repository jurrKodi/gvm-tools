FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y git python3-minimal python3-pip  wget && \
    wget -q https://github.com/greenbone/gvm-tools/archive/v1.4.1.tar.gz  && \
    tar -zxvf v1.4.1.tar.gz  && \
    cd gvm-tools-1.4.1 && \
    pip3 install .  && \
    cd .. && \
    git clone https://github.com/greenbone/python-gvm.git  && \
    cd python-gvm && \
    pip3 install .  && \
    cd .. && \
    wget -q https://download.greenbone.net/tools/check_gmp.py && \
    chmod u+x check_gmp.py

# Define default command.
ENTRYPOINT ["/bin/bash"]
