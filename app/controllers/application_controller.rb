class ApplicationController < ActionController::Base
  private
  def user_data
    {id: @user.id,
     account: @user.account,
     name: @user.name,
     email: @user.email}
  end
  
  def curr_user
    # debugger
    id = (params[:id] or session["koten9487"]["id"])
    @user = User.find(id)
  end

end
