require 'geminabox'
require 'unicorn'

Geminabox.data = ENV['GEMINABOX_DATA']
run Geminabox::Server

