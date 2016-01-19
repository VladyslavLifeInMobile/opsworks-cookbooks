execute 'doctrine_schema' do
    cd /srv/www/mobilegamifylive/current/
    command 'app/console doctrine:schema:create'
end
execute 'khepin' do
    cd /srv/www/mobilegamifylive/current/
    command 'app/console khepin:yamlfixtures:load'
end