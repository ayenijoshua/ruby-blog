Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index"

  get "/articles", to: "articles#index", as: :articles
  
  get "/articles/new", to: "articles#new", as: :new_article

  get "/articles/:id", to: "articles#show", as: :article

  post "/articles", to: "articles#create"

  get "/articles/:id/edit", to: "articles#edit", as: :edit_article

  patch "/articles/:id", to: "articles#update"
  
  delete "/articles/:id", to: "articles#destroy", as: :destroy_article

  #comments
  post "/articles/:id/comments", to: "comments#create"

  get "articles/:id/comments", to: "article#comments", as: :article_comments

  get "comments/:id", to: "comment#show", as: :comment

  #delete "articles/:article_id/comments/:id", to: "comments#destroy", as: :article_comment

  delete "/comments/:id", to: "comments#destroy"
  
end
