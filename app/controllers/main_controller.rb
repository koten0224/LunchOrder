class MainController < ApplicationController
  def index
    session[:path] = "/"
    @events = Event.where(available: true)
  end

end
