Rails.application.routes.draw do
  get 'signup/create'
  # get 'camper/index'
  # get 'camper/show'
  # get 'camper/create'
  # get 'activity/index'
  # get 'activity/show'
  resources :activities, only: [:index, :destroy]
  resources :campers, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
