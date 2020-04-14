class MainController < ApplicationController
  def index
    session[:path] = "/"
    @events = Event.where(available: true).includes(:user).includes(:store)
  end

end
