class Artist < ApplicationRecord
  has_one :user, as: :account
  has_many :artworks, dependent: :destroy
  has_many :orders, through: :artworks, dependent: :destroy

  validates :location, presence: true
  validates :vita, presence: true
  validates :nationality, presence: true
end

