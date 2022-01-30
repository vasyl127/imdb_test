Rails.application.routes.draw do

  devise_for :users
  root to: "page#Home"
  resources :films, only: [:show]


end
