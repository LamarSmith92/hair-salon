Rails.application.routes.draw do


  root 'home#index'
  resources :appointments
  get '/about', to: 'about#index'
  get '/booking', to: 'booking#index'
  get '/styles', to: 'styles#index'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
