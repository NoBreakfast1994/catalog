# frozen_string_literal: true

# Migration to create the businesses table.
class CreateTableBusinesses < ActiveRecord::Migration[7.1]
  def change
    create_table :businesses do |t|
      t.string :name, default: '', null: false
      t.belongs_to :user, foreign_key: true, index: { unique: true }, null: false
      t.timestamps
    end
  end
end
