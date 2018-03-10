Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get '/about' => 'pages#about', as: 'about'

  resources :autos, only: [:show, :new, :create] do
    resources :contracts, only: [:index, :show]
  end

  resources :accident_contracts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
