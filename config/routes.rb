Rails.application.routes.draw do
  resources :internships
  resources :module_sections
  resources :passwords
  resources :content_tags
  resources :tags
  resources :pages
  resources :contents
  resources :modules
  root 'module_sections#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
