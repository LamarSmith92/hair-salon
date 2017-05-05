Rails.application.routes.draw do
  root 'home#index'

  resource :styles
  # get '/styles', to: 'styles#index'

  get '/about', to: 'about#index'

  get '/booking', to: 'booking#index'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
