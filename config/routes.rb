Rails.application.routes.draw do
  get 'page/index'
  
  resources :pecas

  root 'page#index'
end
