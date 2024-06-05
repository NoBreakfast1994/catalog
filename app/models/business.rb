# frozen_string_literal: true

# Represents a business entity in the system.
class Business < ApplicationRecord
  belongs_to :user
end
