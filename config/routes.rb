Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  scope '(:locale)', locale: /en|ar/ do
    resources :users, only: [:index,:show] do
      resources :posts, only: [:new, :create, :edit, :update, :destroy]
    end
  end
end
