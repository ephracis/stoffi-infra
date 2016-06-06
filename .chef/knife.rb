# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ephracis"
client_key               "#{current_dir}/ephracis.pem"
validation_client_name   "simplare-validator"
validation_key           "#{current_dir}/simplare-validator.pem"
chef_server_url          "https://api.chef.io/organizations/simplare"
cookbook_path            ["#{current_dir}/../cookbooks"]
