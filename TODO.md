# Missing Pieces

* `client.sh` does not work correctly since the `storm.yaml` variables are not expanded
* `nimbus.thrift.port` needs to be set and made configurable, see [defaults.yaml](https://github.com/apache/storm/blob/v0.10.0/conf/defaults.yaml)
