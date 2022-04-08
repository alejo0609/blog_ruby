Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :articles
  resources :users

  root "articles#index"
  # Cambiar en caso tal por esta: 
  # root 'welcome#index'
  
 
    resources :articles do
      resources :comments
      resources :ratings 
      


  end

end



 


  
