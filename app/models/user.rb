class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  belongs_to :account, polymorphic: true
  has_one_attached :photo

  accepts_nested_attributes_for :account

  def build_account(params)
    self.account = account_type.constantize.create(params)
  end

  def collector?
    account_type == "Collector"
  end

  def artist?
    account_type == "Artist"
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true

extend FriendlyId
friendly_id :name, use: :slugged
end
