Rails.application.routes.draw do
  root 'chatrooms#index'
  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
