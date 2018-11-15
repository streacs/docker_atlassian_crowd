# Docker - Atlassian Crowd

This is a Docker-Image for Atlassian Crowd based on Debian 9.

## Getting started
Run Atlassian Crowd standalone and navigate to `http://[dockerhost]:8090` to finish configuration:

```bash
docker run -ti -e ORACLE_JAVA_EULA=accepted -p 8060:8060 streacs/atlassian-crowd:x.x.x
```

## Environment Variables
* (M) ORACLE_JAVA_EULA = accepted
* (O) JVM_ARGUMENTS =
* (I) SYSTEM_USER = crowd
* (I) SYSTEM_GROUP = crowd
* (I) SYSTEM_HOME = /home/crowd
* (I) APPLICATION_INST = /opt/atlassian/crowd
* (I) APPLICATION_HOME = /var/opt/atlassian/application-data/crowd
* (O) JVM_MEMORY_MIN = 1024m
* (O) JVM_MEMORY_MAX = 2048m

(M) = Mandatory / (O) = Optional / (I) Information

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

## Examples

Modify JVM memory
```bash
docker run -ti -e ORACLE_JAVA_EULA=accepted -p 8060:8060 -e JVM_MEMORY_MIN=1024m -e JVM_MEMORY_MAX=2048m streacs/atlassian-crowd:x.x.x
```

Persist application data
```bash
docker run -ti -e ORACLE_JAVA_EULA=accepted -p 8060:8060 -v CROWD-DATA:/var/opt/atlassian/application-data/crowd streacs/atlassian-crowd:x.x.x
```

## Databases

This image doesn't include the MySQL JDBC driver.
Please use PostgreSQL.

## Source Code
[Github](https://github.com/streacs/docker_atlassian_crowd)

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details