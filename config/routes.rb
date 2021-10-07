Rails.application.routes.draw do
  resources :labels
  get 'sessions/new'
  root "tasks#index"
  get '/search', to: "tasks#search", as: "search_tasks"
  resources :tasks
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
