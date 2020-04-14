class Store < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  belongs_to :catagory
  has_many :dishes
  has_many :events
  has_many :dish_styles
  has_many :dish_groups

  validates :name, :adress, :tel, :catagory, presence: true

  
end