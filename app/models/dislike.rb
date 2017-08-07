# frozen_string_literal: true

class Dislike < ApplicationRecord
  belongs_to :user
  belongs_to :category
end
