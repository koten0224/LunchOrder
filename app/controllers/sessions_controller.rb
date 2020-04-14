class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    account  = params[:user][:account]
    password = params[:user][:password]
    @user = User.find_by(account: account).try(:authenticate, password)
    if @user
      session[:koten9487] = user_data
      redirect_to index_path
    else
      @user = User.new account: params[:account]
      render :new
    end
  end

  def destroy
    session[:koten9487] = {}
    redirect_to index_path
  end
end
