# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'D085'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'D085::default'
named_run_list 'Game_core', 'd085::core'
named_run_list 'Game_db', 'd085::db'
named_run_list 'Game_micropayment', 'd085::db'
named_run_list 'Game_Web_B', 'd085::web_back'
named_run_list 'Game_Web_F', 'd085::web_front'
#named_run_list 'coop_core', 'd085::coop_core'
#named_run_list 'coop_gateway', 'd085::coop_gateway'
#named_run_list 'coop_env', 'd085::coop_env'

# Specify a custom source for a single cookbook:
cookbook 'D085', path: '.'
