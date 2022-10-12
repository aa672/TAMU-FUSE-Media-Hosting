Rails.application.routes.draw do
  get 'video_files/index'
  get 'video_files/new'
  get 'video_files/create'
  get 'video_files/destroy'
  resources :videos
  resources :module_sections
  resources :passwords
  resources :content_tags
  resources :tags
  resources :pages
  resources :contents
  resources :modules
  root 'module_sections#index'
  #connect to a youtube channel
  get '/youtube_sessions', to: 'youtube_sessions#new'
  get '/youtube_sessions/callback', to: 'youtube_sessions#callback'

  resources :video_files, only: [:index, :new, :create, :destroy]   
  get '/video_files', to: 'video_files#index'
  get '/video_files/middle', to: 'video_files#middle'
  get '/video_files/callback', to: 'video_files#callback'
  #post '/video_files', to: 'video_files#create', as: 'VideoFile'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
