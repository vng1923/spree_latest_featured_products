Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :latest_products
    resources :faetured_products
  end
end
