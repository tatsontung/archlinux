# Installation gitlab on raspberry pi
sudo apt install curl openssh-server ca-certificates postfix apt-transport-https
curl https://packages.gitlab.com/gpg.key | sudo apt-key add -
sudo curl -o /etc/apt/sources.list.d/gitlab_ce.list \
"https://packages.gitlab.com/install/repositories/gitlab/raspberry-pi2/config_file.list?os=debian&dist=jessie" && sudo apt-get update
 
sudo apt-get install gitlab-ce

# Fixing some issues
sudo gitlab-ctl stop
sudo systemctl stop gitlab-runsvdir.service
# (check if there are any postgres processes; shouldn't be)
ps aux | grep postgre 
sudo rm /var/opt/gitlab/postgresql/data/postmaster.pid
sudo systemctl start gitlab-runsvdir.service
sudo gitlab-ctl reconfigure