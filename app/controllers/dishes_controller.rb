class DishesController < ApplicationController

  def create
    @dish_new = Dish.new dish_params
    if @dish_new.save
      redirect_to store_path(store_id: params[:store_id]), notice: "商品新增成功"
    else
      render store_path(store_id: params[:store_id])
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def dish_params
    params[:dish].permit(
      :name, 
      :price, 
      :description, 
      :store_id,
      :dish_group_id,
      :dish_style_id
    )
  end

end
