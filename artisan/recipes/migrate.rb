#
# Cookbook Name:: artisan
# Recipe:: migrate
#
# Copyright 2012-2013, Venture Craft
#


node[:deploy].each do |app_name, deploy|

script "run_migrations" do
	      interpreter "bash"
	      user "root"
	      cwd "#{deploy[:deploy_to]}/current"
	      code <<-EOH
	      php artisan migrate
	      EOH
	    end

script "run_db_seed" do
	      interpreter "bash"
	      user "root"
	      cwd "#{deploy[:deploy_to]}/current"
	      code <<-EOH
	      php artisan db:seed
	      EOH
	    end

script "change_permissions" do
	      interpreter "bash"
	      user "root"
	      cwd "#{deploy[:deploy_to]}/current"
	      code <<-EOH
	      sudo chmod -Rf 777 storage
	      EOH
	    end

script "change_permissions_two" do
	      interpreter "bash"
	      user "root"
	      cwd "#{deploy[:deploy_to]}/current"
	      code <<-EOH
	      sudo chmod -Rf 777 bootstrap/cache
	      EOH
	    end


end