class Store < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  belongs_to :catagory
  has_many :dishes
  has_many :events

  validates :name, :adress, :tel, :catagory, presence: true

  
end