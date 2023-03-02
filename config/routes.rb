Rails.application.routes.draw do
  resources :items
  root to: "items#index" 
  resources :records, only: :index

end
