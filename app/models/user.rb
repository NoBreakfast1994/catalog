# frozen_string_literal: true

# User represents an authenticated user in the system.
# Each user can have at most one associated business.
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable,
         :registerable,
         :rememberable,
         :validatable
end
