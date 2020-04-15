class DishStylesController < ApplicationController
  def create

    @dish_style = DishStyle.new params[:dish_style].permit(
      :name,
      :dish_group_id,
      :store_id
    )
    
    if @dish_style.save
      redirect_to store_path(store_id: params[:store_id]), notice: "欄位新增成功"
    else
      render store_path(store_id: params[:store_id])
    end

  end
end
