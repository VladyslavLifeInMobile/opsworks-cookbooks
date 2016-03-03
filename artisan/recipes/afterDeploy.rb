#
# Cookbook Name:: artisan
# Recipe:: migrate
#
# Copyright 2012-2013, Venture Craft
#


node[:deploy].each do |app_name, deploy|

script "afterDeploy" do
	      interpreter "bash"
	      user "root"
	      cwd "#{deploy[:deploy_to]}/current"
	      code <<-EOH
	      php artisan up
	      EOH
	    end


end