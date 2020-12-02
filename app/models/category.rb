class Category < ApplicationRecord
  has_many :artworks

  validates :name, inclusion: { in: %w(Painting Sculpture Photography Print Drawing) }
end
