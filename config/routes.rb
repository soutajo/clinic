Rails.application.routes.draw do
  get 'home/index'
  devise_for :admins
  devise_for :doctors
  devise_for :users
  root to: "home#index"
end
