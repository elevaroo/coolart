class Collector < ApplicationRecord
  has_one :user, as: :account
  has_many :orders
  has_many :favorite_artworks
end
