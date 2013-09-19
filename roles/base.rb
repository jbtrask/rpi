name 'base'
description 'base role'

run_list %W(
  recipe[apt]
  recipe[monit]
  recipe[openssh]
  recipe[ntp]
  recipe[build-essential]
  recipe[htop]
  recipe[wifi]
  recipe[bluetooth]
)

default_attributes 'openssh' => {
    'permit_root_login' => 'no',
    'password_authentication' => 'no'
}