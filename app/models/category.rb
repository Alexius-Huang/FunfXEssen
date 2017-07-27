# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :restaurant_caretories
  has_many :restaurants, through: :restaurant_caretories
  has_many :dislikes
  has_many :users, through: :dislike
end
