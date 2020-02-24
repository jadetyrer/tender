Rails.application.routes.draw do
  devise_for :workers
  devise_for :users
  resources :events do
    resources :positions 
  end 

  root to: 'events#index'
end 
