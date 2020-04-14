class Dish < ApplicationRecord
  belongs_to :store
  belongs_to :dish_group
  belongs_to :dish_style
end
