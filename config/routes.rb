Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :challenges, except:[:destroy]


  get 'homes/index'
  root 'homes#index'

  resources :users

  get 'auth/developer', as: 'developer_auth'
  get 'auth/github', as: 'github_auth'

  match 'auth/:provider/callback' => 'sessions#create', :via => [:get, :post]

  get 'sessions/destroy', as: 'logout'

end
