Rails.application.routes.draw do
  resources :internship_ops
  resources :internships
  resources :module_sections
  resources :passwords
  resources :content_tags
  resources :tags
  resources :pages
  resources :contents, only: [:index, :new, :create, :destroy, :edit]
  resources :modules
  get '/contents/middle', to: 'contents#middle'
  get '/contents/callback', to: 'contents#callback'
  root 'module_sections#index' 
  get 'contents/index'
  get 'contents/new'
  get 'contents/create'
  get 'contents/destroy'
  get 'contents/:id', to: 'contents#edit'
  patch 'contents/:id', to: 'contents#update'
  get '/contents', to: 'contents#index'
  post '/passwords/new', to: 'passwords#create'
  #patch '/passwords/edit' to: 'passwords#edit'
  patch 'module_sections/:id', to: 'module_sections#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
