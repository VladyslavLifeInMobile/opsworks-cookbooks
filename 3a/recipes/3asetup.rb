execute 'doctrine_schema' do
    command '/srv/www/mobilegamifylive/current/app/console doctrine:schema:create'
end
execute 'khepin' do
    command '/srv/www/mobilegamifylive/current/app/console khepin:yamlfixtures:load'
end