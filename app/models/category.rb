class Category < ApplicationRecord
  has_many :artworks

  validates :category, inclusion: { in: %w(Painting Sculpture Photography Print Drawing) }
end
