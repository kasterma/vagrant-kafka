sudo mkdir -p /var/lib/jmxtrans
sudo cp /vagrant/kafkajmx-query.json /var/lib/jmxtrans
export DEBIAN_FRONTEND=noninteractive && sudo -E dpkg -i /vagrant/jmxtrans-254.deb
