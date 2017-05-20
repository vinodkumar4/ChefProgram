#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file "This.txt" do
        action  :create
end

directory "src"

package "httpd"

service "httpd" do
        action  :start
end

template '/var/www/html/index.html' do
	source 'index.html.erb'
end
