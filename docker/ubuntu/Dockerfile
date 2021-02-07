FROM ubuntu:bionic

# Update base system
RUN apt update
RUN apt install git
RUN git clone https://github.com/tatsontung/workstations-setup
RUN cd workstations-setup
RUN ./install_linux -d ubuntu

# Install XVFB -> required for running chrome in mode frameless, which is required for document downloads
# Install Java -> for Selenium Standalone server
