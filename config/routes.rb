Rails.application.routes.draw do
  get '/author/:show', to: 'author#show', as: 'author'
  get '/gossips/:show', to: 'gossips#show', as: 'show'
  get '/welcome/:first_name', to: 'welcome#first_name'
  get '/home', to: 'static_pages#home'  
  get '/team', to: 'static_pages#team'  
  get '/contact',to: 'static_pages#contact'  
end
