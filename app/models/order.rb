class Order < ApplicationRecord
  belongs_to :artwork
  belongs_to :collector
end
