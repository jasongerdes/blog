Rails.application.routes.draw do
  resources :posts do
    resources :comments,only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  get 'login' => 'user_sessions#new'
  post 'login' => 'user_session#create'
  delete 'logout' => 'user_session#destroy'
  root 'posts#index'
end
