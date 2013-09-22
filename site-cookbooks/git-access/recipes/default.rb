path = "/home/#{node['git-access']['user']}/.ssh"

template "#{path}/config" do
  source 'config.erb'
  mode '600'
  owner node['git-access']['user']
  group node['git-access']['user']
end

template "#{path}/known_hosts" do
  source 'known_hosts.erb'
  mode '600'
  owner node['git-access']['user']
  group node['git-access']['user']
end

template "#{path}/github_rsa" do
  source 'github_rsa.erb'
  mode '400'
  owner node['git-access']['user']
  group node['git-access']['user']
end

template "#{path}/github_rsa.pub" do
  source 'github_rsa.pub.erb'
  mode '400'
  owner node['git-access']['user']
  group node['git-access']['user']
end