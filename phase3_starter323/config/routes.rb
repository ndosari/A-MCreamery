Rails.application.routes.draw do
  resources :users
  resources :shift_jobs
  resources :jobs
  resources :shifts
  resources :store_flavors
  resources :flavors
  resources :sessions, only: [:new, :create, :destroy]
  
  # Generated model routes
  resources :stores
  resources :employees
  resources :assignments
  resources :shifts
  resources :jobs
  resources :shift_jobs
  resources :flavors
  resources :store_flavors
  resources :users

  
  # Set the root url
  root to: 'home#home' #, as: :home
  
   # Semi-static page routes
  get 'home' => 'home#home', as: :home
  get 'about' => 'home#about', as: :about
  get 'contact' => 'home#contact', as: :contact
  get 'privacy' => 'home#privacy', as: :privacy
  
  # get 'active_stores' => 'stores#active', as: :active_stores
  
  delete 'stores' => 'stores#destroy', as: :destroy
  
  # users login
  get 'login' => 'sessions#new', :as => :login
  get 'logout' => 'sessions#destroy', :as => :logout
end


