# frozen_string_literal: true
class DeletePreferenceFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :preference
    remove_column :restaurants, :category
  end
end
