FROM ubuntu:xenial

# Update base system
RUN apt-get update
RUN apt-get install -y software-properties-common apt-transport-https build-essential wget curl net-tools nano bash openjdk-8-jdk xvfb

# Add Google package signing key for chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# Install multiple packages :
# software-properties-common : to be able to use add-apt-repository
# apt-transport-https : add repos over HTTPS (such as Chrome's)
# chrome : to run chrome tests
RUN add-apt-repository "deb https://dl.google.com/linux/chrome/deb/ stable main" \
   && apt-get update \
   && apt-get install -y google-chrome-stable

# Install XVFB -> required for running chrome in mode frameless, which is required for document downloads
# Install Java -> for Selenium Standalone server
# RUN echo 'Acquire::http::Proxy "http://127.0.0.1:3128";' >> /etc/apt/apt.conf.d/99proxy

# Install Node JS for Ubuntu
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update \
   && apt-get install -y nodejs
# Install angular and drivers as global dependency
#   --unsafe is need to install angular-cli (specifically the Sass dependency)
#ENV NPM_CONFIG_LOGLEVEL warn
#RUN npm config set proxy http://127.0.0.1:3128 && npm config set https-proxy http://127.0.0.1:3128
#RUN npm config set registry https://registry.npmjs.org && npm config set strict-ssl false
RUN npm install -g \
    @angular/cli \
    karma \
    karma-chrome-launcher \
    --unsafe

# Get the web source directory
# ADD ./sources-web/web /tmp/web

# 1. Install the dependencies of the web project,
# 2. Move them /tmp/node_modules
# 3. Get rid of the repo
#RUN cd /tmp/web \
    # && npm install \
    # && ng test --sourcemaps=false --progress=false --config=karma.conf.ci.js // hey im testing
    # && mv node_modules /tmp \
    # && rm -rf /tmp/web
