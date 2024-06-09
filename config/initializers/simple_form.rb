# frozen_string_literal: true

SimpleForm.setup do |config|
  config.wrappers :default,
                  class: :input,
                  error_class: :field_with_errors,
                  hint_class: :field_with_hint,
                  valid_class: :field_without_errors do |b|
    b.optional :maxlength
    b.optional :min_max
    b.optional :minlength
    b.optional :pattern
    b.optional :readonly
    b.use :error, wrap_with: { class: :error, tag: :span }
    b.use :hint, wrap_with: { class: :hint, tag: :span }
    b.use :html5
    b.use :label_input
    b.use :placeholder
  end

  config.boolean_label_class = 'checkbox'
  config.boolean_style = :nested
  config.browser_validations = false
  config.button_class = 'btn'
  config.default_wrapper = :default
  config.error_notification_class = 'error_notification'
  config.error_notification_tag = :div
end
