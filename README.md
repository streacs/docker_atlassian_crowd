# Docker - Atlassian Crowd

This is a Docker-Image for Atlassian Crowd based on Debian 9.

## Getting started
Run Atlassian Crowd standalone and navigate to `http://[dockerhost]:8090` to finish configuration:

```bash
docker run -ti -e ORACLE_JAVA_EULA=accepted -p 8060:8060 streacs/atlassian-crowd:x.x.x
```

## Environment Variables
* ORACLE_JAVA_EULA
* JVM_ARGUMENTS
* SYSTEM_USER = crowd
* SYSTEM_GROUP = crowd
* SYSTEM_HOME = /home/crowd
* APPLICATION_INST = /opt/atlassian/crowd
* APPLICATION_HOME = /var/opt/atlassian/application-data/crowd

## Ports
* 8095 = Default HTTP Connector

## Volumes
* /var/opt/atlassian/application-data/crowd

## Oracle end user license agreement
To run this container you have to accept the terms of the Oracle Java end user license agreement.
http://www.oracle.com/technetwork/java/javase/terms/license/index.html

Add following environment variable to your configuration : 
```bash
-e ORACLE_JAVA_EULA=accepted
```

## Source Code
[Github](https://github.com/streacs/docker_atlassian_crowd)

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details