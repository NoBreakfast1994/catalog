# frozen_string_literal: true

# The base mailer class from which all other mailers inherit.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
