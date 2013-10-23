#
# Cookbook Name:: ambari
# Recipe:: default
#
# Copyright 2013, Example Com
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

remote_file '/etc/yum.repos.d/ambari.repo' do
  source 'http://public-repo-1.hortonworks.com/ambari/centos6/1.x/GA/ambari.repo'
  mode '00644'
  action :create_if_missing
end

yum_package "ambari-server" do
  action :install
  flush_cache [:before]
end

bash "ambari-server_setup" do
  code "sudo ambari-server setup -s"
end

bash "ambari-server_start" do
  code "sudo ambari-server start"
end
