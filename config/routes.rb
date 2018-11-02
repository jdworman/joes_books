Rails.application.routes.draw do
root 'books#index'
# get 'books', to: 'books#index'
get 'authors', to: 'authors#index'
get 'formats', to: 'formats#index'

# resources :pages
resources :books
resources :authors
resources :formats
end
