class Medium < ApplicationRecord
  has_many :artworks

  validates :name, uniqueness: true, inclusion: { in: ['Oil paint', 'Watercolour', 'Pencil', 'Etching', 'Lithography', 'Bronze', 'Marble', 'Wood', 'Iron', 'Plastic', 'Acrylic paint', 'Chalk', 'Pastel'] }
end
