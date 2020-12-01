class Collector < ApplicationRecord
  has_one :user, as: :account
end
