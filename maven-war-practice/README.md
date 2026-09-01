# Maven WAR Practice

A simple Java web application for practicing Maven WAR builds and Tomcat deployment.

## Build

```bash
mvn clean package
```

The WAR file will be generated at:

```text
target/simple-webapp.war
```

## Deploy to Tomcat

```bash
cp target/simple-webapp.war /opt/tomcat/webapps/
```

Then open:

```text
http://SERVER_IP:8080/simple-webapp/
```

Servlet URL:

```text
http://SERVER_IP:8080/simple-webapp/hello
```
