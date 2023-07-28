Rails.application.routes.draw do
  get 'home/index'
  devise_for :admins
  devise_for :doctors
  devise_for :users
  root to: "home#index"

  get 'about', to: 'home#about'
  get 'contacts', to: 'home#contacts'
end
