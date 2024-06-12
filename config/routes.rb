Rails.application.routes.draw do
  devise_for :users
  resources :tasks
  resources :projects
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Nested routes for tasks
  resources :projects, param: :slug do
    resources :tasks, only: [:index, :new, :create, :edit, :update, :destroy, :show]
  end

  # Defines the root path route ("/")
  root "home#index"

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
