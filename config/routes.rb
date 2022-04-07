Rails.application.routes.draw do
  devise_for :uses
  get 'welcome/index'

  resources :articles
  resources :users

  root "articles#index"
  # Cambiar en caso tal por esta: 
  # root 'welcome#index'
  
  resources :users do
      resources :articles
      resources :comments
      resources :ratings 
      


  end

end



 


  
