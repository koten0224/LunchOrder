class DishGroupsController < ApplicationController
  def create

    @dish_group = DishGroup.new params[:dish_group].permit(
      :name,
      :store_id
    )
    
    if @dish_group.save
      redirect_to store_path(store_id: params[:store_id]), notice: "群組新增成功"
    else
      render store_path(store_id: params[:store_id])
    end

  end
end
