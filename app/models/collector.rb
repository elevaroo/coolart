class Collector < ApplicationRecord
  has_one :user, as: :account
  has_many :orders, dependent: :destroy
  has_many :favorite_artworks, dependent: :destroy
end
