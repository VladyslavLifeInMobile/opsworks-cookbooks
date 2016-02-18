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


    permissions_command = "sudo chmod -Rf 777 app/storage"

    bash "change_permissions" do
        Chef::Log.debug("Setting permissions on #{deploy[:deploy_to]}/current/app/storage")
        cwd "#{deploy[:deploy_to]}/current"
        code <<-EOH
            #{permissions_command}
        EOH
    end

    permissions_command = "sudo chmod -Rf 777 bootstrap/cache"

    bash "change_permissions" do
        Chef::Log.debug("Setting permissions on #{deploy[:deploy_to]}/current/boostrap/cache")
        cwd "#{deploy[:deploy_to]}/current"
        code <<-EOH
            #{permissions_command}
        EOH
    end


end