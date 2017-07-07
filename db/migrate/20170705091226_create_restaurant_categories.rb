# frozen_string_literal: true
class CreateRestaurantCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_categories do |t|
      t.string :restaurant_id
      t.string :category_id

      t.timestamps
    end
  end
end
