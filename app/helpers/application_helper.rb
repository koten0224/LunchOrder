module ApplicationHelper
  def current_user
    session[:koten9487]["user"]
  end
end
