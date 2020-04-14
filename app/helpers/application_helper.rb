module ApplicationHelper
  def current_user
    if session[:koten9487]["user_id"]
      session[:koten9487]
    end
    
  end
end
