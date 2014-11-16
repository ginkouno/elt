require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Elt
  class Application < Rails::Application
    config.generators do |g|
      g.assets false
      g.helper false 
    end
  end
end
