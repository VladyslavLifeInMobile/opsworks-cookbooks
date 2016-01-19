

execute 'assets_install' do
    cwd '/srv/www/mobilegamifylive/current/'
    command 'app/console assets:install --symlink'
end

execute 'assetic_dump' do
    cwd '/srv/www/mobilegamifylive/current/'
    command 'app/console assetic:dump'
end