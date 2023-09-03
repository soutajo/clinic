Rails.application.routes.draw do
  get 'profile/index'
  devise_for :users

  resources :appointments, only: [:new, :create, :show, :edit, :update]

  root to: 'profile#index'
end
