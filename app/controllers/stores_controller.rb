class StoresController < ApplicationController

  before_action :find_store, 
                only: [ :show, :edit, :update]
  before_action :curr_user,
                only: [ :create ]
  before_action :permit_check,
                except: [ :index, :show ]


  def index
    @stores = Store.includes(:catagory)
  end

  def new
    @store = Store.new
    @new_cata = Catagory.new
  end

  def create
    cata_new = Catagory.new(params[:new_cata].permit(:name))
    if cata_new.save
      params[:store][:catagory_id] = cata_new.id
    end
    @store = @user.stores.create store_params
    if @store.id
      redirect_to store_path(store_id: @store.id), notice: "店家已新增！"
    else
      render :new
    end
  end

  def show
    @menu = @store.menu
  end

  def edit
    
  end

  def update
    if @store.update store_params
      redirect_to store_path(store_id: @store.id), notice: "店家已編輯！"
    else
      render :new
    end
  end


  private

  def find_store
    @store = Store.find(params[:store_id])
  end
  
  def store_params
    filter = [ :name, :adress, :tel, :catagory_id, :author_id, :description ]
    params[:store].permit(*filter)
  end

end
