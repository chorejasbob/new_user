#
# Cookbook Name:: new_user
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apache-site::default"
include_recipe "users"

users = data_bag('users')

users.each do |login|
  user = data_bag_item('users', login)
  home = "/home/#{login}"

  user(login) do
    home	home
    supports	:manage_home => true
  end
end
