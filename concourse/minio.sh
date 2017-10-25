#! /bin/bash -eu

curl -L -f -o /usr/local/bin/minio https://dl.minio.io/server/minio/release/linux-amd64/minio
chmod +x /usr/local/bin/minio

cat >/etc/systemd/system/minio.service <<-EOF
[Unit]
Description=Minio S3 Service
After=postgres.service
[Service]
ExecStart=/usr/local/bin/minio server \
--address localhost:6123 /home/concourse-ws/minio
Type=simple
[Install]
WantedBy=default.target
EOF

systemctl enable minio.service
systemctl start minio.service
