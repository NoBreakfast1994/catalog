# frozen_string_literal: true

Devise.setup do |config|
  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.expire_all_remember_me_on_sign_out = true
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  config.password_length = 6..128
  config.reconfirmable = true
  config.reset_password_within = 6.hours
  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other
  config.sign_out_via = :delete
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 12
  config.strip_whitespace_keys = [:email]
end
