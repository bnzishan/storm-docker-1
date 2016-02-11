#!/usr/bin/env bash

ZOOKEEPER_ADDRESS=${ZOOKEEPER_ADDRESS:=$ZK_PORT_2181_TCP_ADDR}
NIMBUS_ADDRESS=${NIMBUS_ADDRESS:=`hostname -i`}
NIMBUS_IP=${NIMBUS_IP:=`hostname -i`}

if [ -z "$ZOOKEEPER_ADDRESS" ]; then
        echo "ZOOKEEPER_ADDRESS not set";
        exit 1;
fi

sed -i -e "s/%zookeeper%/$ZOOKEEPER_ADDRESS/g" $STORM_HOME/conf/storm.yaml
sed -i -e "s/%nimbus%/$NIMBUS_IP/g" $STORM_HOME/conf/storm.yaml

echo "storm.local.hostname: $NIMBUS_ADDRESS" >> $STORM_HOME/conf/storm.yaml

supervisord
