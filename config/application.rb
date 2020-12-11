require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cin
  class Application < Rails::Application
    config.load_defaults 5.2
    config.factory_bot.definition_file_paths = ["custom/factories"]
  end
end
