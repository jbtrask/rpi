path = "/home/#{node['git-access']['user']}/.ssh"

file "#{path}/config" do
  mode '600'
  owner node['git-access']['user']
  group node['git-access']['user']
end

file "#{path}/known_hosts" do
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
  mode '600'
  owner node['git-access']['user']
  group node['git-access']['user']
end

ssh_util_known_hosts "github.com" do
  user node['git-access']['user']
end

ssh_util_config "github.com" do
  options 'IdentityFile' => "#{path}/github_rsa"
  user node['git-access']['user']
end