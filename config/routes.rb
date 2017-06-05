Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :rate_plans

    root to: "products#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
