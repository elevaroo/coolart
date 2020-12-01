class Artist < ApplicationRecord
  has_one :user, as: :account

  validates :location, presence: true
  validates :vita, presence: true
  validates :nationality, presence: true
end
