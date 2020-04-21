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
    # id = (params[:user_id] or )
    @user = User.find(session["koten9487"]["user"]["user_id"])
  end

  def permit_check
    if not session["koten9487"]["user"]
      redirect_to no_permit_path
    end
  end


end
