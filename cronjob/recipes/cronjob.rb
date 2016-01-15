cron "mainCron" do
  minute "*/5"
  command "cd /srv/www/activationarmy_dev/current && php api/cronjob.php"
end