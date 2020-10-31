Rails.application.routes.draw do
  root to: 'static_pages#top'

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

  resources :meal_records, only: %i[index]
  resources :food_genres

  # ゲストユーザーでログイン
  post 'guest_login', to: 'user_sessions#guest_login'

  namespace :admin do
    resources :meal_pictures
    resources :foods
    resources :food_genres
    resources :meal_records
    resources :authentications
    resources :food_food_genres
    resources :users

    root to: 'users#index'
  end
end
