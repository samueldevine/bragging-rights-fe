Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/twitter',          as: :twitter_login
  get '/auth/twitter/callback', to: 'users#create'
  get '/dashboard',             to: 'users#show'
  get '/final_score',           to: 'games#show'
  get '/leaderboard',           to: 'leaderboard#index'
  get '/logout',                to: 'users#destroy'

  namespace :games do
    resources :questions, only: :show
  end
end
