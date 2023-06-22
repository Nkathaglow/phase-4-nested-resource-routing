Rails.application.routes.draw do

  resources :dog_houses, only: [:show] do
    # nested resource for reviews
    resources :reviews, only: [:show, :index] do 
      resources :comments
  end

  resources :reviews, only: [:show, :index, :create]
end
