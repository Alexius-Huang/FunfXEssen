# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :restaurant_caretories
  has_many :categories, through: :restaurant_caretories
end
