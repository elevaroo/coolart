class Medium < ApplicationRecord
  has_many :artworks

  validates :category, inclusion: { in: ['oil paint', 'watercolour', 'pencil', 'etching', 'lithography', 'bronze', 'marble', 'wood', 'iron', 'plastic', 'acrylic paint', 'chalk', 'pastels'] }
end
