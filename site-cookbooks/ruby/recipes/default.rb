include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

version = "#{node['ruby']['version']}-p#{node['ruby']['patch']}"

rbenv_ruby version

rbenv_gem 'bundler' do
  ruby_version version
end