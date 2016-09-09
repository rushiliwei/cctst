echo 'qqq';
echo 'www';
ls -l
/etc/init.d/mysql start
rake db:create
rake db:migrate
rails s -d -p 80 -b0
sleep infinity

