Rails.application.routes.draw do
  mount Spree::Core::Engine, at: '/'
  resources :donuts
end
