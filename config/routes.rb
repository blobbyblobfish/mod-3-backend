Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/cocktails', to: 'cocktails#index', as: 'cocktails'
      get '/ingredients/:id', to: 'ingredients#show', as: 'ingredient'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
