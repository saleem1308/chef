#
# Cookbook:: apache2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache2' do
  action :install
end

service 'apache2' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<html>
<head><title>Apache2</title><head>
<body>
<h1>
    <p> Welcome to Apache2 webservice</p>
</h>
</body>
</html>'
end
