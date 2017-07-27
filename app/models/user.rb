# frozen_string_literal: true

class User < ApplicationRecord
  has_many :dislikes
  has_many :categories, through: :dislike
  # accepts_nested_attributes_for :dislikes, reject_if: :all_blank, allow_destroy: true
end
