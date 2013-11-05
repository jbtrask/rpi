include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'
rbenv_ruby node['rbenv_pi']['ruby_version']