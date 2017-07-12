Rails.application.routes.draw do
  devise_for :users
  resources :plants

  root 'static_pages#home'

  get 'about', to: 'static_pages#about'

end
