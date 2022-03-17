Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles

  root "articles#index"
  # Cambiar en caso tal por esta: 
  # root 'welcome#index'
  resources :articles do
  resources :comments
  end

end



 


  
