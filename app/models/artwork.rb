class Artwork < ApplicationRecord
  belongs_to :artist
  belongs_to :medium
  belongs_to :category
  has_many :tags


  validates :name, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :price, presence: true
  validates :height, presence: true
  validates :width, presence: true

end
