user = node['lightz']['user']
src = "/home/#{user}/#{node['lightz']['source_directory']}"
project_directory = "#{src}/#{node['lightz']['project_directory']}"

directory project_directory do
  recursive true
  owner user
  group user
end

git project_directory do
  repository node['lightz']['repository']
end

#execute 'update system gems' do
#  command 'sudo gem update --system'
#  cwd project_directory
#  user user
#  group user
#end
#
#execute 'install bundler gem' do
#  command 'sudo gem install bundler'
#  cwd project_directory
#  user user
#  group user
#end
#
#execute "install bundle for #{node['lightz']['project_directory']}" do
#  command 'sudo bundle install'
#  cwd project_directory
#  user user
#  group user
#end
