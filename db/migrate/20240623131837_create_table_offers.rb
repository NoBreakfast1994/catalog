# frozen_string_literal: true

# Migration to create the table offers.
class CreateTableOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.text :description, default: ''
      t.monetize :discounted_price
      t.string :name, default: '', null: false
      t.monetize :original_price
      t.boolean :visible, default: true, null: false
      t.belongs_to :category, foreign_key: true, index: { unique: true }, null: false
      t.timestamps
    end
  end
end
