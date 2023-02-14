Rails.application.routes.draw do
  # get '/home', to: 'static_pages#home'  
  # get '/gossips/:id', to: 'gossips#show', as: 'show'
  get '/author/:id', to: 'author#show', as: 'author'
  get '/welcome/:first_name', to: 'welcome#first_name'
  get '/team', to: 'static_pages#team'  
  get '/contact',to: 'static_pages#contact'  

  resources :gossips
  
end

