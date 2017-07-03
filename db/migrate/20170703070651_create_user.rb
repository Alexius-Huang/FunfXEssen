class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :user do |t|
      t.string :name
      t.text :preference

      t.timestamps
    end
  end
end
