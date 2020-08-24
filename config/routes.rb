Rails.application.routes.draw do
  root to: 'top_pages#top'
  post 'oauth/callback' => 'oauths#callback'
  get 'oauth/callback' => 'oauths#callback' # for use with Github, Facebook
  get 'oauth/:provider' => 'oauths#oauth', :as => :auth_at_provider
  # resources :foods, only: [:create]
  resources :foods, only: %i[create index show] do
    resources :meal_records, only: %i[new create show edit update destroy], shallow: true
    collection do
      get 'search_form'
      post 'search_picture'
    end
  end
  resources :meal_records, only: [:index]
  resources :users, only: %i[new create]
  get '/login', to: 'user_sessions#new', as: :login
  post '/login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy', as: :logout
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
