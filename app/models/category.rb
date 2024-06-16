# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string           default(""), not null
#  visible     :boolean          default(TRUE), not null
#  business_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Category < ApplicationRecord
  db_belongs_to :business

  validates :business_id, db_uniqueness: true
end
