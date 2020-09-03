Rails.application.routes.draw do
  root to: 'top_pages#top'
  post 'oauth/callback' => 'oauths#callback'
  get 'oauth/callback' => 'oauths#callback' # for use with Github, Facebook
  get 'oauth/:provider' => 'oauths#oauth', :as => :auth_at_provider
  resources :users, only: %i[new create]
  get '/login', to: 'user_sessions#new', as: :login
  post '/login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy', as: :logout

  resources :foods, only: %i[new create] do
    resources :meal_records, only: %i[new create show edit update destroy], shallow: true do
      resources :picture_attachments, only: %i[destroy], module: 'meal_records'
    end
    collection do
      get 'search_form_result'
      post 'search_picture_result'
    end
  end
  resources :food_genres
end
