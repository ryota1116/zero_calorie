Rails.application.routes.draw do
  root to: 'meal_records#index'
  # resources :foods, only: [:create]
  resources :foods, only: [:create, :index] do
    collection do
      get 'search_form'
      post 'search_picture'
    end
  end
  resources :meal_records, only: [:new, :create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
