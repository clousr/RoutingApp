Rails.application.routes.draw do
  
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'

  get 'leadgen/advertising/landingpage', to: 'pages#contact', as: 'lead'

  resources :blogs
  resources :posts
# must be careful with the globbing(*) postion in this file because it will catch all, will follow that first route
  get 'posts/*missing', to: 'posts#missing'

  get 'query/:thing', to: 'pages#something'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

