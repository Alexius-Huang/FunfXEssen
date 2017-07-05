class User < ApplicationRecord
  validates :name, presence: true
  validates :preference, presence: true
end
