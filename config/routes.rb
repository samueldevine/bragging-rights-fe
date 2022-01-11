Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/twitter',          as: :twitter_login
  get '/auth/twitter/callback', to: 'users#create'
  get '/dashboard',             to: 'users#show'
  get '/leaderboard',           to: 'leaderboard#index'
  get '/logout',                to: 'users#destroy'
  get '/quiz',                  to: 'questions#show'
  get '/final_score',           to: 'games#show'

  resources :games, only: [:new, :create, :show, :update] do
    resources :questions, only: :show
  end
end
