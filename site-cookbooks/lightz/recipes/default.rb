src = "/home/#{node['lightz']['user']}/#{node['lightz']['source_directory']}"

directory src do
  owner node['lightz']['user']
  group node['lightz']['user']
end

git "#{src}/#{node['lightz']['project_directory']}" do
   repository node['lightz']['repository']
end