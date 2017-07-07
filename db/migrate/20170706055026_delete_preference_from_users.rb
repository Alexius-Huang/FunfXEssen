# frozen_string_literal: true

class DeletePreferenceFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :preference, :string
    remove_column :restaurants, :category, :string
  end
end
