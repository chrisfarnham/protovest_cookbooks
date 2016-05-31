#
# Cookbook Name:: simulation_server
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



directory '/home/ec2-user/api' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end


git '/home/ec2-user/api' do
  repository 'https://github.com/chrisfarnham/dateliner.git'
  revision 'master'
  action :sync
end
