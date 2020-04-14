class DishStyle < ApplicationRecord
  belongs_to :store
  belongs_to :dish_group
  has_many :dishes
  validates :name, presence: true
end
