include_recipe 'dependencies'
server "gitlab.biuro.3a.pl", user: "deploy", roles: %w{web app db}, port: 10222
node[:deploy].each do |application, deploy|
  
  opsworks_deploy_user do
    deploy_data deploy
  end

end
