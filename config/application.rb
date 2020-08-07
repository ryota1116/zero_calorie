require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ZeroCalorie
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # slimをデフォに設定
    config.generators.template_engine = :slim

    # TimeZoneの設定
    config.i18n.available_locales = %i[ja]
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local

    # generateコマンド時に生成されるファイルに制限をかける
    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework :rspec,
        view_specs: false,
        routing_specs: false,
        helper_specs: false,
        controller_specs: false
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
