# frozen_string_literal: true

# == Schema Information
#
# Table name: businesses
#
#  id         :integer          not null, primary key
#  name       :string           default(""), not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Business < ApplicationRecord
  db_belongs_to :user

  has_many :categories, dependent: :destroy
  has_many :offers, through: :categories, dependent: :destroy

  validates :name, presence: true
  validates :user_id, db_uniqueness: true
end
