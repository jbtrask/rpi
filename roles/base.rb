name 'base'
description 'base role'

run_list %W(
  recipe[chef-client::delete_validation]
  recipe[chef-client::config]
  recipe[chef-client::service]
  recipe[apt]
  recipe[monit]
  recipe[postfix]
  recipe[openssh]
  recipe[ntp]
  recipe[vim]
  recipe[build-essential]
  recipe[user::data_bag]
  recipe[logrotate]
  recipe[ohai]
  recipe[ruby_build]
  recipe[rbenv::system]
  recipe[sudo]
  recipe[zsh]
  recipe[oh-my-zsh]
  recipe[collectd]
  recipe[collectd::attribute_driven]
  recipe[htop]
  recipe[runit]
  recipe[rsyslog::client]
)

default_attributes 'openssh' => {
  'permit_root_login' => 'no',
  'password_authentication' => 'no'
}