Rails.application.routes.draw do
  root 'static#index'

  resources :locations, only: [:index, :new, :create, :edit, :update]

  resources :locations, only: [:show] do
    resources :listings
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
