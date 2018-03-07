#!/bin/sh

echo 'Setup docker daemon' 
cat >/etc/docker/daemon.json <<-EOF
{
        "insecure-registries" : ["10.177.102.84:5000"]
}
EOF

echo 'Setup docker proxy'
#/etc/systemd/system/docker.service.d/http-proxy.conf
mkdir -p /etc/systemd/system/docker.service.d

cat >/etc/systemd/system/docker.service.d/http-proxy.conf <<-EOF
[Service]
Environment="HTTP_PROXY=http://127.0.0.1:3128/" "NO_PROXY=localhost"
EOF

#/etc/systemd/system/docker.service.d/https-proxy.conf
cat >/etc/systemd/system/docker.service.d/https-proxy.conf <<-EOF
[Service]
Environment="HTTP_PROXY=http://127.0.0.1:3128/" "NO_PROXY=localhost"
EOF

sudo systemctl daemon-reload
sudo service docker stop
sudo service docker start
