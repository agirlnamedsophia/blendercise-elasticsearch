ElasticExample::Application.routes.draw do
  resources :categories
  resources :recipes
  resources :cookbooks

  resources :food
  root to: 'food#index'
end
