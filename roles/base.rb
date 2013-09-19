name 'base'
description 'base role'

run_list %W(
  recipe[wifi]
  recipe[bluetooth]
  recipe[apt]
  recipe[monit]
  recipe[openssh]
  recipe[ntp]
  recipe[build-essential]
  recipe[htop]
)

default_attributes 'openssh' => {
    'permit_root_login' => 'no',
    'password_authentication' => 'no'
}