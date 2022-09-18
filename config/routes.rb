Rails.application.routes.draw do
  resources :passwords
  resources :content_tags
  resources :tags
  resources :pages
  resources :contents
  resources :modules
  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
