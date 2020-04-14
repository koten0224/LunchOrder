class ApplicationController < ActionController::Base
  private
  def user_data
    {
      user_id: @user.id,
      account: @user.account,
      name:    @user.name,
      email:   @user.email
    }
  end
  
  def curr_user
    # debugger
    # id = (params[:user_id] or )
    @user = User.find(session["koten9487"]["user_id"])
  end

end
