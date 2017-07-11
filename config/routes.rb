Rails.application.routes.draw do
  resources :plants

  root 'static_pages#home'

  get 'about', to: 'static_pages#about'

end
