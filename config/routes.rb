Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/cocktails', to: 'cocktails#index', as: 'cocktails'
      get '/cocktails/:id', to: 'cocktails#show', as: 'cocktail'
      get '/ingredients', to: "ingredients#index", as: 'ingredients'
      get '/ingredients/:id', to: 'ingredients#show', as: 'ingredient'
    
      post '/cocktails', to: 'cocktails#create'
      post '/ingredients', to: 'ingredients#create'

      patch '/cocktails/:id', to: 'cocktails#update'

      delete '/cocktails/:id', to: 'cocktails#destroy'
      delete '/ingredients/:id', to: 'ingredients#destroy'
      
      # resources :ingredients
      # resources :cocktails
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
