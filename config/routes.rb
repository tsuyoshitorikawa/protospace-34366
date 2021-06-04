Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes, only: [:index, :new, :create, :destroy, :edit, :update, :show] do
    resources :comments, only: :create 
  end
  resources :users, only: :show
end

