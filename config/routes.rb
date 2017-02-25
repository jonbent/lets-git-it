Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :challenges, except:[:destroy]
  resources :scoreboards, only:[:new, :create, :show]


  get 'homes/index'
  root 'homes#index'

  resources :users

  get 'auth/developer', as: 'developer_auth'
  get 'auth/github', as: 'github_auth'

  match 'auth/:provider/callback' => 'session#create', :via => [:get, :post]

  get 'session/destroy', as: 'logout'

end
