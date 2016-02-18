

execute 'assets_install' do
    cwd '/srv/www/mobilegamifylive/current/'
    command 'app/console assets:install --symlink --env=prod'
end

execute 'assetic_dump' do
    cwd '/srv/www/mobilegamifylive/current/'
    command 'app/console assetic:dump --env=prod'
end