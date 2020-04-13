class Event < ApplicationRecord
  belongs_to :user
  belongs_to :store
  has_many :orders
  has_many :users, through: :orders
  
end
