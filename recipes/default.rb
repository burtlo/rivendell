#
# Cookbook:: rivendell
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Started with this script:
# http://static.paravelsystems.com/rivendell-install/rivendell-install-rhel6.html

execute "wget http://download.paravelsystems.com/CentOS/6/Paravel-Broadcast.repo -P /etc/yum.repos.d/"

execute "wget http://download.paravelsystems.com/CentOS/6/RPM-GPG-KEY-Paravel-Broadcast -P /etc/pki/rpm-gpg"

execute "yum -y install rivendell-install"

execute "/root/install_rivendell.sh --standalone"
