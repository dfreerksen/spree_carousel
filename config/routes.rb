Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :carousels
  end
end
