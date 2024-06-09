# frozen_string_literal: true

require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :development, :production or :test.
Bundler.require(*Rails.groups)

module Catalog
  # The main application class responsible for configuring and bootstrapping the Rails application.
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `generators`, `middleware`, or `templates`, for example.
    config.autoload_lib(ignore: %w[assets tasks])
  end
end
