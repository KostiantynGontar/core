#
# Cookbook Name:: core
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe "freebsd::portsnap"

freebsd_port_options"vim" do
  options "NLS" => false, "CONSOLE" => true, "GTK2" => false
  action :create
end

package "vim" do
  action :install
end
