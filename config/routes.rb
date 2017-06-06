Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show] do
        resources :rate_plans, only: [:index]
      end
    end
  end

  namespace :admin do
    resources :products
    resources :rate_plans
    root to: "products#index"
  end

  # Administrate expects these routes that aren't part of resources when in api mode
  namespace :admin, as: '' do
    get '/products/new', to: 'products#new', as: 'new_admin_product'
    get '/products/:id/edit', to: 'products#edit', as: 'edit_admin_product'

    get '/rate_plans/new', to: 'rate_plans#new', as: 'new_admin_rate_plan'
    get '/rate_plans/:id/edit', to: 'rate_plans#edit', as: 'edit_admin_rate_plan'
  end

end
