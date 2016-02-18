#
# Cookbook Name:: artisan
# Recipe:: migrate
#
# Copyright 2012-2013, Venture Craft
#


if node[:opsworks][:instance][:layers].include?("db-seeder")
  config_file = 'app/database/run.list'
  bash "migrate db" do
    code %Q^
      php artisan migrate
      for clz in `cat #{config_file}` do;
        php artisan db::seed --class=${clz};
      done^
  end
end

