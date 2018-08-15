#!/usr/bin/env bash

curl https://getcaddy.com | bash -s personal tls.dns.vultr,http.cache,http.cors,http.datadog,http.expires,http.filemanager,http.filter,http.forwardproxy,http.geoip,http.hugo,http.ipfilter,http.jekyll,http.jwt,http.locale,http.login,http.minify,http.ratelimit,http.realip,http.reauth,http.upload,http.webdav,dns,net

sudo chmod +x systemd.service
sudo chown www-data:www-data systemd.service
sudo chmod 755 systemd.service
sudo cp -f ./systemd.service  /etc/systemd/system/caddy@getrixdesign.service
sudo ls -lA /etc/systemd/system/caddy*
sudo systemctl daemon-reload
sudo systemctl enable caddy@getrixdesign.service
sudo systemctl start caddy@getrixdesign.service
