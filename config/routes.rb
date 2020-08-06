Rails.application.routes.draw do
  # resources :foods, only: [:create]
  resources :foods, only: [:create, :index] do
    collection do
      post 'search_result'
    end
  end
  resources :meal_records, only: [:new, :create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
