class Artwork < ApplicationRecord
  belongs_to :artist
  belongs_to :medium
  belongs_to :category
  has_many :tags
  has_many :orders
  has_many_attached :photos

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
  scope :price_min, lambda{|min| where(['price >= ?', min])}
  scope :price_max, lambda{|max| where(['price <= ?', max])}
end
