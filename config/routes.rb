Rails.application.routes.draw do
  devise_for :workers do
    resources :worker_profiles
  end 
  devise_for :users
  resources :events do
    resources :positions 
  end 

  root to: 'events#homepage'
end 


## Add applications?
