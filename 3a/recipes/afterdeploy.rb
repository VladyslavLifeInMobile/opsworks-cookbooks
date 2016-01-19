

execute 'assets_install' do
    cd '/srv/www/mobilegamifylive/current/'
    command 'app/console assets:install --symlink'
end

execute 'assetic_dump' do
    cd '/srv/www/mobilegamifylive/current/'
    command 'app/console assetic:dump'
end