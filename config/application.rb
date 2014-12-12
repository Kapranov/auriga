require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

CONFIG = YAML.load(File.read(File.expand_path('../application.yml', __FILE__)))
CONFIG.symbolize_keys!

module Auriga
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.time_zone = 'Kyiv'
    config.i18n.default_locale = :ru
    config.active_record.timestamped_migrations = false
    I18n.enforce_available_locales = false
  end
end
