name 'app'
description 'app role'

run_list %W(
  recipe[imagemagick]
  recipe[nginx]
  recipe[unicorn]
)