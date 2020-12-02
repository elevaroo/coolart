class Artist < ApplicationRecord
  has_one :user, as: :account
  has_many :artworks
  has_many :orders, through: :artworks

  validates :location, presence: true
  validates :vita, presence: true
  validates :nationality, presence: true
end
