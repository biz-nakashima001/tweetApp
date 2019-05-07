require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TweetApp2
  class Application < Rails::Application
    config.action_dispatch.default_headers.delete 'X-Frame-Options'    
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
  end
end
