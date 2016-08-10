require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cctst
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    #
    # config.action_mailer.raise_delivery_errors = true
    # #添加如下几行代码
    # config.action_mailer.default_url_options = { :host => "localhost:3001" } #提示中有提到需要配置，即执行rails g devise:install
    # config.action_mailer.delivery_method = :smtp
    # config.action_mailer.smtp_settings = {
    #     :address => "smtp.qq.com",  #smtp.qq.com
    #     :port => 25,
    #     :domain => "qq.com",   #qq.com
    #     :authentication => :login,
    #     :user_name => "2695435848@qq.com", #修改邮箱
    #     :password => "" #修改正确的密码
    # }

    config.paths.add "app/api", glob: "**/*.rb"
    config.paths.add "app/services", glob: "**/*.rb"
    config.autoload_paths += Dir["#{Rails.root}/app/api/*"]
    config.autoload_paths += Dir["#{Rails.root}/app/services/*"]
  end
end
