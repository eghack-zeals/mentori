Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/top', to: 'statics#top', as: :top
  get '/users/:id/demo', to: 'statics#demo', as: :demo
  root 'statics#top'
  post '/users/:id/user_speeches', to: 'user_speeches#speak', as: :speak
end
