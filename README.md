# appscopeCrashAnalysis
Demo to present AppScope Crash analysis capabilities using Cribl product

## Prerequisites

- Active Cribl Cloud account https://cribl.io/cribl-cloud/
- Fill up `.env` file with cloud credentials values:

CLOUD_LEADER_HOSTNAME - Leader Node hostname
CLOUD_TOKEN - Leader Node’s shared secret (authToken)
CLOUD_FLEET_NAME - Name of the cluster’s Worker Group.

See details [here](https://docs.cribl.io/edge/environment-variables/).


## Overview
This demo environment uses:

- [AppScope](https://cribl.io/appscope/)
- [Cribl.Cloud](https://cribl.io/cribl-cloud/)
- [Edge](https://cribl.io/edge/)
- [Search](https://cribl.io/search/)
- Redis as a scoped application

The diagram below depicts the demo setup.

## Verify environment

- In cloud Edge observe that You got active worker

## Building

To build the demo:

```bash
./start.sh
```

## Cleaning up after a session

To clean up the demo environment:

```bash
./stop.sh
```


## Testing

To confirm that everything works correctly:

```bash
docker ps
```

## Scope example application

```bash
sudo ./bin/linux/x86_64/scope attach -c edge --backtrace --coredump redis-server
```

## Scope daemon

```bash
sudo ./bin/linux/x86_64/scope daemon --filedest localhost:10087
```
