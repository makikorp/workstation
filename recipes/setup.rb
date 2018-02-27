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

template '/etc/motd' do
	source 'motd.erb'
	variables(
	 :name => 'nam'
	)
	action :create
end


