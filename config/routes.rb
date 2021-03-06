Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  
  resources :documents
  authenticated :user do
    root 'documents#index', as: 'authenticated_root'
  end
  root 'welcome#index'
end
