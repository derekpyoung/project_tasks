Rails.application.routes.draw do

  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show'
  patch '/tasks/:id', to: 'tasks#edit'
  delete '/tasks/:id', to: 'tasks#destroy'
  post '/tasks', to: 'tasks#create'

  get '/', to: 'projects#index'
  get '/projects/:id', to: 'projects#show'
  post '/projects/:id', to: 'tasks#create'
  post '/projects/new', to: 'projects#create'
  post '/new', to: 'projects#new'
  get '/new', to: 'projects#new'
  get '/projects/new', to: 'projects#create'
  get '/projects/:id', to: 'projects#update'
  delete '/projects/:id', to: 'projects#destroy'


  get '/users',to: 'users#index'
  get '/signup', to: 'users#create'
  get '/users/:id',to: 'users#show'
  post '/signup', to: 'users#create' 
  patch '/users/:id',to: 'users#update'
  delete '/users/:id',to: 'users#destroy'

  post '/login', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  

  
 

end
