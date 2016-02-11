FROM sunside/storm:0.10.0
MAINTAINER Markus Mayer <widemeadows@gmail.com>

RUN /usr/bin/config-supervisord.sh nimbus 
RUN /usr/bin/config-supervisord.sh drpc

COPY bin/start-supervisor.sh /usr/bin/

EXPOSE 3772 3773 6627 

CMD /usr/bin/start-supervisor.sh
