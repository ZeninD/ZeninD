MyStore::Application.routes.draw do

  devise_for :users

  resources :items do
    get :upvote,    on: :member
    get :expensive, on: :collection
  end
  # match ':controller(/:action(/:id))(.:format)'

  root to: "items#index"
end
