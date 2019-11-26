FROM ubuntu:18.04
USER root
RUN apt-get update && \
  apt-get -y install sudo
RUN useradd -m tatsontung && passwd -d tatsontung && adduser tatsontung sudo
#ADD /sudoers.txt /etc/sudoers
RUN chmod 440 /etc/sudoers
RUN cat /etc/sudoers
USER tatsontung
ENV home /home/tatsontung/workspace/workstations-setup
WORKDIR ${home}
ADD . $home
RUN cd $home
# RUN echo 'proxy = 172.17.0.1:3130' > ~/.curlrc
# RUN echo 'proxy = 172.17.0.1:3130' > ~/.wgetrc
# RUN cat ~/.curlrc
# RUN cat ~/.wgetrc
RUN ls -l
RUN pwd
ENV TERM=xterm
#RUN bash $home/install.sh -d ubuntu -e external
RUN cp $home/scripts/environments/external/home.zshrc ~/.zshrc
RUN bash $home/scripts/environments/external/homeconfig.sh
RUN bash $home/scripts/ubuntu/bootstrap.sh
RUN bash $home/scripts/ubuntu/node.sh
RUN bash $home/scripts/commons/apps.sh
RUN bash $home/scripts/commons/config.sh
RUN bash $home/scripts/commons/git.sh
RUN bash $home/scripts/commons/zsh.sh