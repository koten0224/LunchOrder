class DishGroup < ApplicationRecord
  belongs_to :store
  has_many :dishes
  has_many :dish_styles
  validatea :name, presence: true
end
