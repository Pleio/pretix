FROM pretix/standalone:1.16
MAINTAINER Jeroen Wellner <jeroen@wllnr.nl>

USER root
#RUN pip3 install pretix-passbook

ADD docker/pretix/pretix.cfg.template /pretix/pretix.cfg.template

COPY ./docker/start.sh /start.sh
RUN chmod +x /start.sh

USER pretixuser

RUN cd /pretix/src && make production

ENTRYPOINT []

CMD ["./start.sh"]
