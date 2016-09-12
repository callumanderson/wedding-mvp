Rails.application.routes.draw do
  resources :venues
  root 'welcome#index'
  get 'index' => 'welcome#index'
end
