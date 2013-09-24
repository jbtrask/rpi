name 'app'
description 'app role'

run_list %W(
  recipe[rvm::ruby_193]
  recipe[imagemagick]
  recipe[nginx]
  recipe[unicorn]
  recipe[bluetooth]
  recipe[lightz]
)