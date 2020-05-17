FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Add OpenCPN PPA
RUN apt-get update &&  apt-get install -y software-properties-common
RUN add-apt-repository ppa:opencpn/opencpn

# Install OpenCPN
RUN apt-get update && apt-get install -y opencpn

# Run it
CMD opencpn -no_opengl
