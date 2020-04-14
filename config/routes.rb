Rails.application.routes.draw do
  get  "/",                     to: "main#index",      as: "index"
  get  "/user/:user_id",        to: "users#show",      as: "user"
  get  "/user/:user_id/edit",   to: "users#edit",      as: "edit_user"
  get  "/regist",               to: "users#new"
  post "/regist",               to: "users#create"
  get  "/login",                to: "sessions#new"
  post "/login",                to: "sessions#create"
  post "/logout",               to: "sessions#destroy"
  get  "/stores",               to: "stores#index",    as: "all_stores"
  get  "/store/new",            to: "stores#new",      as: "store_new"
  post "/store/new",            to: "stores#create"
  get  "/store/:store_id",      to: "stores#show",     as: "store"
  get  "/store/:store_id/edit", to: "stores#edit",     as: "edit_store"
  post "/store/:store_id/edit", to: "stores#update"
  get  "/no_permit",            to: "main#no_permit",  as: "no_permit"

  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end