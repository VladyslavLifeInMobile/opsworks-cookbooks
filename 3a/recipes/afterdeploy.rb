yum_package 'php56' do
 action :install
 end

execute 'composer_isntall' do
    command 'composer install'
end


execute 'assets_install' do
    command '/srv/www/mobilegamifylive/current/app/console assets:install --symlink'
end

execute 'assetic_dump' do
    command '/srv/www/mobilegamifylive/current/app/console assetic:dump'
end