class User < ApplicationRecord
  has_many :carts
  has_one :address
end
