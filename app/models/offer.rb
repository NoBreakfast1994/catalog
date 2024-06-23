# frozen_string_literal: true

# == Schema Information
#
# Table name: offers
#
#  id                        :integer          not null, primary key
#  description               :text             default("")
#  discounted_price_cents    :integer          default(0), not null
#  discounted_price_currency :string           default("BRL"), not null
#  name                      :string           default(""), not null
#  original_price_cents      :integer          default(0), not null
#  original_price_currency   :string           default("BRL"), not null
#  visible                   :boolean          default(TRUE), not null
#  category_id               :integer          not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
class Offer < ApplicationRecord
  db_belongs_to :category

  monetize :discounted_price_cents, numericality: true
  monetize :original_price_cents, numericality: { greater_than: 0 }

  validates :name, presence: true
  validates :category_id, db_uniqueness: true
end
