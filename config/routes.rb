Rails.application.routes.draw do
  get 'dish_styles/create'
  get 'dish_groups/create'
  get  "/",                             to: "main#index",         as: "index"
  get  "/no_permit",                    to: "main#no_permit",     as: "no_permit"
  get  "/code",                         to: "main#code",          as: "code"
  get  "/user/:user_id",                to: "users#show",         as: "user"
  get  "/user/:user_id/edit",           to: "users#edit",         as: "edit_user"
  get  "/regist",                       to: "users#new"
  post "/regist",                       to: "users#create"
  get  "/login",                        to: "sessions#new"
  post "/login",                        to: "sessions#create"
  post "/logout",                       to: "sessions#destroy"
  get  "/stores",                       to: "stores#index",       as: "all_stores"
  get  "/store/new",                    to: "stores#new",         as: "store_new"
  post "/store/new",                    to: "stores#create"
  get  "/store/:store_id",              to: "stores#show",        as: "store"
  get  "/store/:store_id/edit",         to: "stores#edit",        as: "edit_store"
  post "/store/:store_id/edit",         to: "stores#update"
  post "/store/:store_id/dish_create",  to: "dishes#create",      as: "new_dish"
  post "/store/:store_id/style_create", to: "dish_styles#create", as: "new_dish_style"
  post "/store/:store_id/group_create", to: "dish_groups#create", as: "new_dish_group"
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end