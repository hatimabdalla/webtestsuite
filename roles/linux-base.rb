name "linux-base"
description "This is the base role for all Linux instances"
run_list "recipe[apt]"
# default_attributes(
# )