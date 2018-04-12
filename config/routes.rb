Rails.application.routes.draw do
  resources :donuts
  mount Spree::Core::Engine, at: '/'
end
