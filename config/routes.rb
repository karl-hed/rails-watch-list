Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :movies do
  #   # /restaurants/...
  #   # collection do
  #   #   post, to: "restaurants#new"
  #   # end
  # end
  resources :lists do
    # resources :movies, only: %i[new create]
    resources :bookmarks, only: %i[new create]
  end
end
