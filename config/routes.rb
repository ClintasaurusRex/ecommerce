Rails.application.routes.draw do
  resources :products
  resources :categories
  
  # Standalone cart route
  resource :cart, only: [:show]
  
  resources :products, only: [:index, :show]
  
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  root 'products#index'
end