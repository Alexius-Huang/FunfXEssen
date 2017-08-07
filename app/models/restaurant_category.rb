# frozen_string_literal: true

class RestaurantCategory < ApplicationRecord
  belongs_to :restaurant
  belongs_to :category
end
