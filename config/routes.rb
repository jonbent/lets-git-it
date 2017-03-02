Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'homes/index'
  root 'scoreboards#new'

  get "scoreboards/:id/download"  => 'scoreboards#download'
  get "scoreboards/leaderboard",  as: 'leaderboard'
  get "users/update_week" => 'users#update_week'
  get "users/update_cohort" => 'users#update_cohort'
  resources :users, only: [:index, :edit, :destroy, :create, :show]

  resources :scoreboards do
    resources :challenges, only:[:index, :create, :new, :update]
    resources :notes, only:[:index, :create, :new, :show]
  end

  get 'auth/developer', as: 'developer_auth'
  get 'auth/github', as: 'github_auth'

  match 'auth/:provider/callback' => 'sessions#create', :via => [:get, :post]

  get 'sessions/destroy', as: 'logout'


end
