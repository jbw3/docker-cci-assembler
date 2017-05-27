FROM gcc:5.4

# Build Python

ENV PYTHON_VERSION=3.5.3

# install dependencies
RUN apt-get update
RUN apt-get install -y libssl-dev openssl

# download Python
RUN wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz
RUN tar xzvf Python-${PYTHON_VERSION}.tgz

# build
RUN cd Python-${PYTHON_VERSION} && ./configure && make && make install

# clean up
RUN rm -rf Python-${PYTHON_VERSION} Python-${PYTHON_VERSION}.tgz
