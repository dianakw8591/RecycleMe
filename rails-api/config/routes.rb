Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'users#login'
      get '/users/:id/guesses', to: 'users#guesses'
      resources :items
      resources :users
      resources :guesses
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
