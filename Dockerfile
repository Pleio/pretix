FROM pretix/standalone:1.16
MAINTAINER Jeroen Wellner <jeroen@wllnr.nl>

USER root
#RUN pip3 install pretix-passbook

ADD docker/pretix/pretix.cfg /etc/pretix/pretix.cfg

RUN chown -R pretixuser /etc/pretix/
RUN chmod 0700 /etc/pretix/pretix.cfg

USER pretixuser

RUN cd /pretix/src && make production
