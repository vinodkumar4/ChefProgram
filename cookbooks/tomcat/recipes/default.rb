#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package "tomcat" do
        action  :install
end


bash 'install_something' do
  user 'root'
  cwd  '/root'
  code <<-EOH
  wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
  cp /root/jenkins.war /usr/share/tomcat/webapps/.
  EOH
end

service "tomcat" do
        action  :stop
        action  :start
end

