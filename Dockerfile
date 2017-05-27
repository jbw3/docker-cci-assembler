FROM gcc:5.4

# install Python 3
RUN apt-get update
RUN apt-get install -y python3
