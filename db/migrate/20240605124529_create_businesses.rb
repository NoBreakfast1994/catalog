# frozen_string_literal: true

# Migration to create the businesses table.
class CreateBusinesses < ActiveRecord::Migration[7.1]
  def change
    create_table :businesses do |t|
      t.string :name, default: '', null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
