Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'page#Home'
  resources :films, only: %i[show]
  get '/films/:id/:star_id', to: 'films#rating_update'
  get '/personal_info', to: 'page#personal_info'
end
