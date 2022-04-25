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
RUN rm /var/lib/rstudio-server/rstudio.sqlite
RUN chmod -R g=u /var/lib/rstudio-server
RUN chmod -R g=u /etc/rstudio

USER rstudio

# invalidates cache every 24 hours
ADD http://master.bioconductor.org/todays-date /tmp/