Rails.application.routes.draw do

  resources :appointments
  resources :clients
  devise_for :admins
  root 'home#index'
  get '/about', to: 'about#index'
  get '/booking', to: 'booking#index'
  get '/styles', to: 'styles#index'
  get '/appointments', to: 'appointments#index'

  devise_for :users do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
end
