Rails.application.routes.draw do

  root 'welcome#index'
  get '/test' => 'welcome#test'
  resources :contacts
end
