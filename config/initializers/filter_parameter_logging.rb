# frozen_string_literal: true

Rails.application.config.filter_parameters += %i[
  _key certificate crypt otp passw salt secret ssn token
]
