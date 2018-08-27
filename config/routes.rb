Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources  :articles
  resources  :blog
  root :to => "blog#index"
  get 'archives', to: "blog#archives"
end
