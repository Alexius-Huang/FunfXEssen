# frozen_string_literal: true

class User < ApplicationRecord
  has_many :dislikes
  has_many :categories, through: :dislike
end
