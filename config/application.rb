require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module VersaTestApp
  class Application < Rails::Application
    
    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"
    config.time_zone = 'Berlin'
    
    # Allow all origins to include this app via <frame> or <iframe>.
    config.action_dispatch.default_headers = { 'X-Frame-Options' => 'ALLOWALL' }
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
