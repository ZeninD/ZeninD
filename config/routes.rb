MyStore::Application.routes.draw do

  devise_for :users

  resources :items do
    get :upvote,    on: :member
    get :expensive, on: :collection
  end
  # match ':controller(/:action(/:id))(.:format)'

  get "admin/users_count" => "admin#users_count"

  root to: "items#index"
end
