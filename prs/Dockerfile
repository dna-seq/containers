FROM quay.io/comp-bio-aging/rstudio:latest

MAINTAINER antonkulaga@gmail.com

ADD install.R /tmp/

ENV PATH "$PATH:/home/rstudio/.local/bin:/home/rstudio/.local"

USER root
RUN apt-get install -y cmake zlib1g-dev
RUN pip3 install cget click

# R stuff
RUN R -f /tmp/install.R
RUN chown -R rstudio /home/rstudio/
#bug fixes for permissions issues
RUN chmod -R g=u /var/lib/rstudio-server && chmod -R g=u /etc/rstudio &&  chmod -R g=u /usr/local/lib/R

USER rstudio

# invalidates cache every 24 hours
ADD http://master.bioconductor.org/todays-date /tmp/

#SHELL ["/bin/bash"]
#CMD ["rstudio-server start"]