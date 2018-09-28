#
# Cookbook:: couchbase-cluster
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
apt_update

apt_package 'python-httplib2'

remote_file '/tmp/couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb' do
   source 'https://packages.couchbase.com/releases/5.0.1/couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb'
end

dpkg_package 'couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb' do
  source '/tmp/couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb'
  action :install
end
