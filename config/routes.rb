Rails.application.routes.draw do
  get 'profile/index'

  resources :players
  get '/', to: "home#index"
  get 'home/index'

  devise_for :users
  get "/admin/index", to: "admin#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
