Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :carousels, only: [:index, :edit, :update]
  end
end
