# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class User < ApplicationRecord
  devise :database_authenticatable,
         :recoverable,
         :registerable,
         :rememberable,
         :validatable

  has_one :business, dependent: :destroy

  validates :email, presence: true
  validates :reset_password_token, db_uniqueness: true
end
