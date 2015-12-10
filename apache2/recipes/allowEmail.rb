execute "setsebool -P httpd_can_network_connect 1" do
  only_if "getsebool -a | grep 'httpd_can_network_connect --> off'"
end

execute "setsebool -P httpd_can_sendmail 1" do
  only_if "getsebool -a | grep 'httpd_can_sendmail --> off'"
end