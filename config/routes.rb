Rails.application.routes.draw do
  get 'search/search_index'
  get "/" => "home#top"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/show/:id" => "posts#show"

  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "search/search_index" => "search#search_index"
  post "search/result" => "search#result"
end
