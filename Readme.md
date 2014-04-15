## Vagrant Box for Ruby on Rails development

### Build and Provision the VM

	host $ vagrant up

### Install gem dependencies

	host $ vagrant ssh
	guest $ cd apps/vagrant-rails/
	guest $ bundle install
	
### Start Rails server

	guest $ bundle exec rails s
	
### Open in Browser

	host $ open http://localhost:8080