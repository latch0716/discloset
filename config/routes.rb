Rails.application.routes.draw do
  root to: "items#index" 
  resources :items, only: [:new, :create, :show, :edit, :destroy, :update]
  resources :records, only: :index
end
