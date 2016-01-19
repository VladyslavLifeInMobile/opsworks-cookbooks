execute 'doctrine_schema' do
    cwd '/srv/www/mobilegamifylive/current/'
    command 'app/console doctrine:schema:create'
end
execute 'khepin' do
    cwd '/srv/www/mobilegamifylive/current/'
    command 'app/console khepin:yamlfixtures:load'
end