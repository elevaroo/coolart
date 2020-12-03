class Category < ApplicationRecord
  has_many :artworks

  validates :name, inclusion: { in: ['Painting', 'Sculpture', 'Photography', 'Print', 'Drawing', 'Mixed Media'] }
end
