name 'extended'
description 'extended role'

run_list %W(
  recipe[chef-client::delete_validation]
  recipe[chef-client::config]
  recipe[chef-client::service]
  recipe[postfix]
  recipe[vim]
  recipe[vnc]
  recipe[user::data_bag]
  recipe[logrotate]
  recipe[ohai]
  recipe[ruby_build]
  recipe[rbenv::system]
  recipe[zsh]
  recipe[oh-my-zsh]
  recipe[collectd]
  recipe[collectd::attribute_driven]
  recipe[runit]
  recipe[rsyslog::client]
  recipe[rvm::ruby_193]
  recipe[sudo]
)