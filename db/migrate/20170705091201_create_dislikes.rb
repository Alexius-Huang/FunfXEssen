# frozen_string_literal: true

class CreateDislikes < ActiveRecord::Migration[5.1]
  def change
    create_table :dislikes do |t|
      t.string :user_id
      t.string :category_id

      t.timestamps
    end
  end
end
