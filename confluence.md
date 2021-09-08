## Official Instructions

- https://confluence.atlassian.com/doc/installing-confluence-on-linux-from-archive-file-255362363.html

## Find Latest Version

- https://www.atlassian.com/software/confluence/download-archives

## Install Confluence

Install and unzip into proper dir.

```bash
wget https://product-downloads.atlassian.com/software/confluence/downloads/atlassian-confluence-7.13.0.tar.gz
tar -xzf atlassian-confluence-7.13.0.tar.gz
mv atlassian-confluence-7.13.0 confluence
```

### Install Java + FontConfig

- https://adoptopenjdk.net/installation.html#linux-pkg
- https://askubuntu.com/a/1186142

> apt-get install adoptopenjdk-11-hotspot

https://confluence.atlassian.com/confkb/confluence-server-6-13-or-later-fails-with-fontconfiguration-error-when-installing-on-linux-operating-systems-960167204.html

> sudo apt-get install -y fontconfig

### Setup-up confluence home directory

> mkdir /root/confluence/home

> vim /root/confluence/confluence/WEB-INF/classes/confluence-init.properties


Install missing mySQL driver:  

> cd /home/ubuntu/confluence/confluence/WEB-INF/lib

> wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.26.tar.gz
> tar -xzf mysql-connector-java-8.0.26.tar.gz
> mv mysql-connector-java-8.0.26/mysql-connector-java-8.0.26.jar mysql-connector-java-8.0.26.jar

Set mySQL connection string as something like:  
> jdbc:mysql://mysql8.ctbuh.org/confluence2021?sessionVariables=transaction_isolation='READ-COMMITTED'

## Installation

> cd /confluence/bin/  
> ./start-confluence.sh

## Post Set-up

Install Nginx:  
https://confluence.atlassian.com/confkb/how-to-use-nginx-to-proxy-requests-for-confluence-313459790.html

## Links

https://confluence.atlassian.com/doc/supported-platforms-207488198.html

