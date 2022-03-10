Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/first-item" => "products#show_first"
  get "/all-items" => "products#show_all"
  get "/last-item" => "products#show_last"
  get "/lookup-id" => "products#by_id"
  get "/lookup-id/:id" => "products#by_id"
  get "/lookup-name" => "products#by_name"
  get "/lookup-name/:name" => "products#by_name"
end
