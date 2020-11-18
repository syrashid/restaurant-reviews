class Restaurant < ApplicationRecord
  has_one :chef, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
