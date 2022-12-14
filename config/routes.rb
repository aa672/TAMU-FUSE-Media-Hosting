Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'my'
  resources :users
  resources :internship_ops
  resources :internships
  resources :module_sections
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
  patch 'module_sections/:id', to: 'module_sections#update'
  get 'users/index', to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
