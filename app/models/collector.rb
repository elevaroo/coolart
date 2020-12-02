class Collector < ApplicationRecord
  has_one :user, as: :account
  has_many :orders

  def show
    @artwork = Artwork.new
  end
end
