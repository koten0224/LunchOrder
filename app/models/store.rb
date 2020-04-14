class Store < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  belongs_to :catagory
  has_many :dishes
  has_many :events
  has_many :dish_styles
  has_many :dish_groups

  validates :name, :adress, :tel, :catagory, presence: true

  def menu

    result = {}
    
    dish_groups.includes(:dish_styles).includes(:dishes).each do |group|

      result[group.id] = { name: group.name, styles: {} }
      group_hash = result[group.id][:styles]

      group.dish_styles.each do |style|
        group_hash[style.id] = {name: style.name, dishes: [] }
      end

      group.dishes.each do |dish|
        group_hash[dish.dish_style_id][:dishes].push(dish)
      end
    end

    return result

  end
  
end