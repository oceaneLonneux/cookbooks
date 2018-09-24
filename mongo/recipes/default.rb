#
# Cookbook:: mongo
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#We basically follow provision.sh here, but with a ruby syntax for the chef.
apt_update 'update' do
  action [:update]
end
apt_repository 'mongodb-org' do
  uri "http://repo.mongodb.org/apt/ubuntu"
  distribution 'trusty/mongodb-org/3.2'
  components ['multiverse']
  keyserver 'hkp://keyserver.ubuntu.com:80'
  key 'EA312927'
end
# we need keys because we need to ask permissions to download mongo
# https://docs.chef.io/resource_apt_repository.html
package 'mongodb-org' do
  action [:upgrade]
end
