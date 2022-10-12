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
  root 'module_sections#index' 
  get 'contents/index'
  get 'contents/new'
  get 'contents/create'
  get 'contents/destroy'
  get '/contents', to: 'contents#index'
  get '/contents/middle', to: 'contents#middle'
  get '/contents/callback', to: 'contents#callback'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
