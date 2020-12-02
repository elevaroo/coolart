class Medium < ApplicationRecord
  has_many :artworks

  validates :name, inclusion: { in: ['Oil paint', 'Watercolour', 'Pencil', 'Etching', 'Lithography', 'Bronze', 'Marble', 'Wood', 'Iron', 'Plastic', 'Acrylic paint', 'Chalk', 'Pastel'] }
end
