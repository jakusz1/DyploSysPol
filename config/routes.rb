Rails.application.routes.draw do
  devise_for :users
  get 'topics/index'

  get 'topic/index'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  post 'topics/checkboxes', to: 'topics#checkboxes'

  resources :topics
end
