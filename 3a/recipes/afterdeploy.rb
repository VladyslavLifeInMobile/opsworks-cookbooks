
execute 'assets_install' do
    command '/srv/www/mobilegamifylive/current/app/console assets:install --symlink'
end

execute 'assetic_dump' do
    command '/srv/www/mobilegamifylive/current/app/console assetic:dump'
end