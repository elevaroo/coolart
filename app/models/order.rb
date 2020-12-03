class Order < ApplicationRecord
  belongs_to :artwork
  belongs_to :collector

  enum status: { confirmed: 0, dispatched: 1, fulfilled: 2 }
end
