#!/usr/bin/env bash

ZOOKEEPER_ADDRESS=${ZOOKEEPER_ADDRESS:=$ZK_PORT_2181_TCP_ADDR}
NIMBUS_ADDRESS=${NIMBUS_ADDRESS:=$NIMBUS_PORT_6627_TCP_ADDR}
SUPERVISOR_ADDRESS=${SUPERVISOR_ADDRESS:=`hostname -i`}

if [ -z "$ZOOKEEPER_ADDRESS" ]; then 
	echo "ZOOKEEPER_ADDRESS not set"
	exit 1
fi

if [ -z "$NIMBUS_ADDRESS" ]; then
        echo "NIMBUS_ADDRESS not set"
        exit 1
fi

# update the configuration file
sed -i -e "s/%zookeeper%/$ZOOKEEPER_ADDRESS/g" $STORM_HOME/conf/storm.yaml
sed -i -e "s/%nimbus%/$NIMBUS_ADDRESS/g" $STORM_HOME/conf/storm.yaml
echo "storm.local.hostname: $SUPERVISOR_ADDRESS" >> $STORM_HOME/conf/storm.yaml

supervisord
