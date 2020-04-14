class UsersController < ApplicationController
  before_action :curr_user, 
                only: [:show, :edit, :update]

  def index
    redirect_to regist_path
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:koten9487] = user_data
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        # debugger
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    filter = [:account, 
              :password, 
              :password_confirmation, 
              :name, 
              :email 
    ]
    params.require(:user).permit(*filter)
  end
    
end
