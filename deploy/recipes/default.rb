include_recipe 'dependencies'

node[:deploy].each do |application, deploy|
  port = 10222
  opsworks_deploy_user do
    deploy_data deploy
  end

end
