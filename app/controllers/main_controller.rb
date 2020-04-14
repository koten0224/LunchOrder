class MainController < ApplicationController
  def index
    if not session[:koten9487]
      session[:koten9487] = {}
    end
    session[:koten9487][:path] = index_path
    @events = Event.where(available: true).includes(:user).includes(:store)
  end
  
  def no_permit
  end

end
