class Artwork < ApplicationRecord
  belongs_to :artist
  belongs_to :medium
  belongs_to :category
  has_many :tags
  has_many :orders, dependent: :destroy
  has_many_attached :photos
  has_many :favorite_artworks
  has_many :collectors, through: :favorite_artworks

  include SimpleRecommender::Recommendable
  similar_by :collectors

  monetize :price_cents

  accepts_nested_attributes_for :tags

  validates :name, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :price, presence: true
  validates :height, presence: true
  validates :width, presence: true
  validates :photos, presence: true

  scope :category, lambda{|category| joins(:category).where(['categories.name = ?', category])}
  scope :medium, lambda{|medium| joins(:medium).where(['media.name = ?', medium])}
  scope :tag, lambda{|tag| joins(:tag).where(['tags.name = ?', tag])}
  scope :artist, lambda{|artist| joins(:artist).where(['artist.last_name = ?', artist])}
  scope :price_min, lambda{|min| where(['price_cents >= ?', 100*min.to_i])}
  scope :price_max, lambda{|max| where(['price_cents <= ?', 100*max.to_i])}
  scope :year, lambda{|year| where(["extract(YEAR from year)= ?", year])}

def self.available_years
  Artwork.pluck('extract(YEAR from year)').sort.uniq
end

def increase_views
  self.view_counter = self.view_counter + 1
  save!
end

end
