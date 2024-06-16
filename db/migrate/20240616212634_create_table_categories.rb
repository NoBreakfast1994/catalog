# frozen_string_literal: true

# Migration to create the table categories.
class CreateTableCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name, default: '', null: false
      t.boolean :visible, default: true, null: false
      t.belongs_to :business, foreign_key: true, index: { unique: true }, null: false
      t.timestamps
    end
  end
end
