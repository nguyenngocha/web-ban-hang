class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :carts
  has_one :address

  validates :name, presence: true
  validates :phone_number, presence: true

  accepts_nested_attributes_for :address, allow_destroy: true
end
