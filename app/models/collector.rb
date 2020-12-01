class Collector < ApplicationRecord
  has_one :user, as: :account
  has_many :orders
end
