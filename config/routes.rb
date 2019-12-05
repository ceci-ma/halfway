
Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # resources :venues, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'comment/store'
  root 'welcome#index'


  resources :venues, only: [:index, :show] do
    resources :favourites, only: [:create]
    # To be potentially added to improve load time
    # get :all_venues, on: :collection
  end

  resources :users, only: [:show]

  resources :favourites, only: [:index, :destroy]

  resources :chatrooms, only: [:index, :show, :new, :create]

end



