class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :account, polymorphic: true, dependent: :destroy
  has_one_attached :photo

  accepts_nested_attributes_for :account

  before_validation :check_account

  def build_account(params)
    self.account = account_type.constantize.create(params)
  end

  def artist
    account
  end

  def check_account
    if User.where(username: self.username).any?
      self.account.destroy
    end
  end

  def collector?
    account_type == "Collector"
  end

  def artist?
    account_type == "Artist"
  end

  validates :first_name, presence: true, format: { with: /\b[A-Z][a-z]*\b/ }
  validates :last_name, presence: true, format: { with: /\b[A-Z][a-z]*\b/ }
  validates :username, presence: true, uniqueness: true
end
