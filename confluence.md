## Install Confluence

Install and unzip into proper dir.

> wget https://product-downloads.atlassian.com/software/confluence/downloads/atlassian-confluence-7.2.0.tar.gz

> tar -xzf atlassian-confluence-7.2.0.tar.gz

> mv atlassian-confluence-7.2.0 confluence

### Install Java + FontConfig

https://adoptopenjdk.net/installation.html#linux-pkg

> apt-get install adoptopenjdk-8-hotspot

https://confluence.atlassian.com/confkb/confluence-server-6-13-or-later-fails-with-fontconfiguration-error-when-installing-on-linux-operating-systems-960167204.html

> sudo apt install -y fontconfig

### Setup-up confluence home directory

> mkdir /home/ubuntu/confluence/home

> vim /home/ubuntu/confluence/confluence/WEB-INF/classes/confluence-init.properties


Install missing mySQL driver:  

> cd /home/ubuntu/confluence/confluence/WEB-INF/lib

> wget http://central.maven.org/maven2/mysql/mysql-connector-java/8.0.18/mysql-connector-java-8.0.18.jar

Set mySQL connection string as something like:  
> jdbc:mysql://mysql8.cznrkyzqkzks.us-east-1.rds.amazonaws.com/confluence?sessionVariables=transaction_isolation='READ-COMMITTED'


## Post Set-up

Install Nginx:  
https://confluence.atlassian.com/confkb/how-to-use-nginx-to-proxy-requests-for-confluence-313459790.html

## Links

https://confluence.atlassian.com/doc/supported-platforms-207488198.html

