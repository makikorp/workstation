#
# Cookbook:: workstation
# Recipe:: setup.rb
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'tree' do
	action :install
end

package 'vim' do
	action :install
end

package 'ntp'

package 'git' do
	action :install
end

file '/etc/motd' do
	content 'This server is the property of Nui'
	action :create
	owner 'root'
	group 'root'
end


