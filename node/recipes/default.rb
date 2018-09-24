#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe("nodejs")

package "nginx"

nodejs_npm "pm2" do
  action [:install]
end

template '/etc/nginx/sites-available/proxy.conf' do
  source 'proxy.conf.erb'
end

service "nginx" do
  action [:enable, :start]
end
