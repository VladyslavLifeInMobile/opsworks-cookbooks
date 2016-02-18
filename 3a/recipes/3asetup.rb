execute 'doctrine_schema' do
    cwd '/srv/www/mobilegamifylive/current/'
    command 'app/console doctrine:schema:create --env=prod'
end
execute 'khepin' do
    cwd '/srv/www/mobilegamifylive/current/'
    command 'app/console khepin:yamlfixtures:load --env=prod'
end