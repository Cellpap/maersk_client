rm maersk_client-1.1.0.gem
gem uninstall maersk_client
gem build maersk_client.gemspec
gem install ./maersk_client-1.1.0.gem
