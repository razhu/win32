Rails.application.routes.draw do
  resources :advertises

  root to: 'visitors#index'
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users
  match '/user/:id/finish_signup' => 'user#finish_signup', via: [:get, :patch], :as => :finish_signup

end
