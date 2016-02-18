#
# Cookbook Name:: artisan
# Recipe:: migrate
#
# Copyright 2012-2013, Venture Craft
#




script "run_migrations" do
	      interpreter "bash"
	      user "root"
	      cwd "#{deploy[:deploy_to]}/current"
	      code <<-EOH
	      php artisan migrate
	      EOH
	    end