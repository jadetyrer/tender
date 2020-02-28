Rails.application.routes.draw do
  devise_for :workers 
  devise_for :users
  resources :events do
    resources :positions do
      member do 
        post :apply
        patch :accept
        patch :reject
      end 
    end 
  end
  resources :workers
  resources :worker_profiles
  patch "/worker_profiles", to: "worker_profiles#update"

  get "/worker/dashboard", to:"worker_profiles#show", as: :worker_dashboard
  get "/user/dashboard", to:"user_profiles#show", as: :user_dashboard

  get 'download_resume', to: "worker_profiles#download_resume"
  get 'download_document', to: "worker_profiles#download_document"



  root to: 'events#homepage'
end 


