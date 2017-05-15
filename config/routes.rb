Rails.application.routes.draw do


  devise_for :admins
  root 'home#index'
  resources :appointments
  resources :clients
  get '/about', to: 'about#index'
  get '/booking', to: 'booking#index'
  get '/styles', to: 'styles#index'



  devise_for :users do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
end
