# useful

useful devops commands


## Nginx

```bash
sudo apt-get -y install nginx
```

[etc/nginx.conf](https://github.com/ctbuh/useful/blob/master/etc/nginx.conf)

Remove:
>sudo apt-get purge nginx nginx-common 

## Node

```bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - 
sudo apt-get install -y nodejs
```


## Let's Encrypt

```bash
sudo apt-get update
sudo apt-get -y install software-properties-common
sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:certbot/certbot
sudo apt-get update

sudo apt-get -y install certbot python-certbot-nginx
```


#### Get certificate:

https://certbot.eff.org/docs/using.html#certbot-command-line-options

> Will ask for an email. Optional: --email email@email.com  
> Will ask for domain. Optional: --domain domain.com  
> Make it non-interactive: -n

```bash
sudo certbot --nginx --agree-tos --redirect --email technology@ctbuh.org
```

## Node Deploy

[etc/deploy.sh](etc/deploy.sh)

