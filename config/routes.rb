Rails.application.routes.draw do
  # VERB URL(CONTROLLER/ACTION)
  # get 'pages/about'
  # get 'pages/contact'

  # VERB + URL, TO: CONTROLLER#ACTION
  # get(path, options = {})
  # get('about', { to: 'pages#about' })
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # get '/', to: 'pages#about'
  root to: 'pages#home'
end
