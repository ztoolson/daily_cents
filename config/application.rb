require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DailyCents
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Custom directories with classes and modules you want to be eager loaded.
    config.eager_load_paths += %W( #{config.root}/lib/atrium )

    # Custom directories with classes and modules you want to be auto loaded.
    config.autoload_paths += %W( #{config.root}/lib/atrium )
  end
end
