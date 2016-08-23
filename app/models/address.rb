class Address < ApplicationRecord
  belongs_to :user
  
  validates :city, presence: true
  validates :town, presence: true
  validates :village, presence: true
  validates :home_number, presence: true
end
