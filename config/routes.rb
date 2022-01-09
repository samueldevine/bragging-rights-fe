Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/twitter',          as: :twitter_login
  get '/auth/twitter/callback', to: 'users#create'
  get '/dashboard',             to: 'users#show'
  get '/questions/:id',         to: 'questions#show'
  get '/logout',                to: 'users#destroy'
  get '/leaderboard',           to: 'leaderboard#index'
end
