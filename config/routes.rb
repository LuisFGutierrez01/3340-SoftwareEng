Rails.application.routes.draw do
  devise_for :users
  resources :goals
  get '/goals/:id/support(.:format)', as: 'support_goal', to: 'goals#support'
  resources :players
  get '/profile/index'
  get '/goals_own/index'
  get '/goals_own/missing', to: 'goals_own#missing'
  get '/', to: 'home#index'
  get 'home/index'
  get '/admin/index', to: "admin#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
