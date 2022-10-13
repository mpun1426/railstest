Rails.application.routes.draw do
  get 'posts/index'
  get 'users/index'
  get 'naomarus/yahho', to: 'naomarus#yahho'
  get 'naomarus/call', to: 'naomarus#call'
  resources :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
