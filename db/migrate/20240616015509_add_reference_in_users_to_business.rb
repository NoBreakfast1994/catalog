# frozen_string_literal: true

# Add a reference in the users table to business.
class AddReferenceInUsersToBusiness < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :business, foreign_key: { on_delete: :nullify }, index: { unique: true }
  end
end
