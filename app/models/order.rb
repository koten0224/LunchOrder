class Order < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :dish
end
