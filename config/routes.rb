Rails.application.routes.draw do
  root 'welcome#index'

  get '/auth/twitter',          as: :twitter_login
  get '/auth/twitter/callback', to: 'users#create'

  get '/dashboard',             to: 'users#show'
  get '/logout',                to: 'users#destroy'

  get 'games/new',              to: 'games#new'
  get '/leaderboard',           to: 'games#index'
  get '/quiz',                  to: 'questions#show'
  get '/final_score',           to: 'games#show'
end
