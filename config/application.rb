require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module UltimatePet
  class Application < Rails::Application
            # Check and load application configuration file
            # config.before_configuration do
            #   ::APP_CONFIG = ::ActiveSupport::OrderedOptions.new
            #   config_yml = File.join(::Rails.root, 'config' , 'application.yml')
            #   if not File.exists?(config_yml)
            #     puts "Missing config/application.yml, aborting"
            #    exit 1
            #   end
            #   YAML.load_file(config_yml)[::Rails.env].each do |key, value|
            #     ::APP_CONFIG[key] = value
            #   end
            # end

            # # Custom directories with classes and modules you want to be autoloadable.
            # config.autoload_paths << Rails.root.join('lib')
            # # Configure the default encoding used in templates for Ruby 1.9.
            # config.encoding = "utf-8"

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :en

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.i18n.available_locales = [:es, :en]
  end
end
