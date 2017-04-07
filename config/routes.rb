Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'homes/index'
  root 'scoreboards#leaderboard'

  get 'scoreboards/:id/download' => 'scoreboards#download'
  get 'scoreboards/leaderboard' => 'scoreboard#leaderboard'
  get 'users/update_week' => 'users#update_week'
  get 'users/update_cohort' => 'users#update_cohort'
  resources :users, only: %i[index edit destroy create show]

  resources :scoreboards do
    resources :challenges, only: %i[index create new update]
    resources :notes, only: %i[index create new show]
  end

  get 'auth/developer', as: 'developer_auth'
  get 'auth/github', as: 'github_auth'

  match 'auth/:provider/callback' => 'sessions#create', :via => %i[get post]

  get 'sessions/destroy', as: 'logout'
end
