server '13.59.219.30', user: 'ubuntu', roles: %w{web app db}




set :branch, 'staging'
set :deploy_to, "/home/ubuntu/staging/#{fetch(:application)}"

set :deploy_user, "ubuntu"

set :rails_env, "staging"
set :rack_env, "staging"
set :puma_env, "staging"

# set :ssh_options, {
# 	user: 'ubuntu',
# 	forward_agent: false,
# 	auth_methods: %w(password),
# 	password: 'password'
# }

set :ssh_options, {
	keys: %w(/home/user/key.pem),
	forward_agent: false,
	auth_methods: %w(publickey)
}
