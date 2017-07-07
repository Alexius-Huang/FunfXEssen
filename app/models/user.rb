class User < ApplicationRecord
  has_many :dislikes, inverse_of: :user
  accepts_nested_attributes_for :dislikes, reject_if: :all_blank, allow_destroy: true
end
