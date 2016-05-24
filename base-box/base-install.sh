apt-get -y --force-yes update
apt-get -y --force-yes install openjdk-7-jdk
apt-get -y --force-yes install tmux emacs
cat /vagrant/id_rsa_vagrant.pub >> /home/vagrant/.ssh/authorized_keys
cp /vagrant/id_rsa_vagrant /home/vagrant/.ssh/id_rsa
