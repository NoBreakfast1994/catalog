# frozen_string_literal: true

# DeviseCreateUsers is a migration class created by Devise gem for managing user authentication.
# This migration sets up the necessary database tables and schema for user authentication,
# including email and password fields.
class DeviseCreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, default: '', null: false
      t.string :encrypted_password, default: '', null: false
      t.datetime :remember_created_at
      t.datetime :reset_password_sent_at
      t.string :reset_password_token
      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
