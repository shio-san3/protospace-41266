Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  resources :prototypes, only: [:index, :new]
end
