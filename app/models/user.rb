class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :account, polymorphic: true

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
end
