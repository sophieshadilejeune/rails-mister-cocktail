Rails.application.routes.draw do
  root to: 'cocktails#index'
  # get 'ingredients/show'
  # get 'ingredients/new'
  # get 'ingredients/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:show, :new, :create, :destroy] do
      resources :doses, only: [:show, :new, :create]
    end
    resources :doses, only: [:destroy]
  end

