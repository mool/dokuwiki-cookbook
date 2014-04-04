#
# Cookbook Name:: dokuwiki
# Recipe:: default
#
# Author:: Pablo Gutierrez del Castillo <pablogutierrezdelc@gmail.com>
# Copyright 2014, Pablo Gutierrez del Castillo
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Install PHP-FPM
package 'php5-fpm'

# Install and configure nginx
include_recipe 'nginx'

template "#{node.nginx.dir}/sites-available/dokuwiki" do
  source 'dokuwiki-nginx.erb'
  mode '0644'
  notifies :reload, 'service[nginx]'
end

nginx_site 'dokuwiki'

# Install dokuwiki
ark 'dokuwiki' do
  url "http://download.dokuwiki.org/src/dokuwiki/dokuwiki-#{node['dokuwiki']['version']}.tgz"
  path node['dokuwiki']['dir']
  owner 'www-data'
  group 'www-data'
  action :put
end

# Configure dokuwiki
cookbook_file "#{node['dokuwiki']['dir']}/dokuwiki/conf/acl.auth.php" do
  source 'acl.auth.php'
  owner 'www-data'
  group 'www-data'
  mode 0640
end

template "#{node['dokuwiki']['dir']}/dokuwiki/conf/users.auth.php" do
  source 'users.auth.php.erb'
  owner 'www-data'
  group 'www-data'
  mode 0640
  action :create_if_missing
end

template "#{node['dokuwiki']['dir']}/dokuwiki/conf/local.php" do
  source 'local.php.erb'
  owner 'www-data'
  group 'www-data'
  mode 0640
  action :create_if_missing
end
