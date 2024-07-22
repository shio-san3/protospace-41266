Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    delete 'users/sign_out', to: 'devise/sessions#destroy'
  end
  root to: 'prototypes#index'
  resources :prototypes, only: [:index, :new, :create]
end
