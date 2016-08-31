############################################################
# Dockerfile to build git  container images
# Based on ubuntu:16.04
############################################################
# Set the base image to Ubuntu
FROM ubuntu:16.04
# File Author / Maintainer
MAINTAINER  rotem@secupi.com
################## BEGIN INSTALLATION ######################
RUN apt-get update && apt-get install -y wget && apt-get install nano && apt-get install -y git
##################### INSTALLATION END #####################
ADD new-entrypoint.sh /new-entrypoint.sh
RUN chown root:root /new-entrypoint.sh && chmod +x /new-entrypoint.sh
ENTRYPOINT ["/new-entrypoint.sh"]
