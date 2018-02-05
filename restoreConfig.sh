#/bin/bash
tar -zxvf jenkins.tar.gz -C /var/lib/
#restart the service
sudo systemctl restart jenkins
