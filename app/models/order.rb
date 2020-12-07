class Order < ApplicationRecord
  belongs_to :artwork
  belongs_to :collector

  monetize :amount_cents

  enum status: { pending: 0, confirmed: 1, dispatched: 2, fulfilled: 3 }
end
