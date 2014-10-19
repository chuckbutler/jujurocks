Rails.application.routes.draw do

  # Generated views backed by mongo
  resources :djs
  resources :podcasts
  resources :contacts, path: 'contact'

  # fairly static content pages
  root 'home#index'
  get 'player', to: 'player#index'
  get 'schedule', to: 'schedule#index'
  get 'about', to: 'about#index'


  # legalese - kinda.
  get 'terms/broadcast'
  get 'terms/content'
  get 'terms/codeofconduct'

end
