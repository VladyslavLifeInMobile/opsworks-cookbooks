# install PHP by remi
include_recipe "yum-remi-chef::remi-php56"
enablerepo="--enablerepo=remi-php56,remi,epel"

# install php packages
node['php']['packages'].each do |pkg|
  package pkg do
    options enablerepo
    action :install
  end
end

# install additional packages
node['php']['additional_packages'].each do |pkg|
  package pkg do
    options enablerepo
    action :install
  end
end

