#!/bin/bash

# prometheus installation
echo "PROMETHEUS INSTALLATION"
mkdir -p /opt
cd /opt
wget https://github.com/prometheus/prometheus/releases/download/v3.16.0/prometheus-3.16.0.linux-amd64.tar.gz
tar -xvzf prometheus-3.16.0.linux-amd64.tar.gz
rm -rf prometheus-3.16.0.linux-amd64.tar.gz
mv prometheus-3.16.0.linux-amd64/ prometheus

touch /etc/systemd/system/prometheus.service
cp ../prometheus.service /etc/systemd/system/prometheus.service
systemctl daemon-reload
systemctl start prometheus
systemctl enable prometheus
systemctl status prometheus
netstat -lntp

# graphana installation
echo "GRAPHANA INSTALLATION"
cd /opt
curl -o gpg.key https://rpm.grafana.com/gpg.key
sudo rpm --import gpg.key

touch /etc/yum.repos.d/grafana.repo
cp ../grafan.repo /etc/yum.repos.d/grafana.repo 
dnf install grafana -y

touch /etc/systemd/system/grafana-server.service
cp ../grafana-server.service /etc/systemd/system/grafana-server.service
systemctl daemon-reload
systemctl start prometheus
systemctl enable prometheus
systemctl status prometheus
netstat -lntp