class Catagory < ApplicationRecord
  validates :name, presence: true
  has_many :stores
end
