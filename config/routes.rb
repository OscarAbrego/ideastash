Rails.application.routes.draw do
  resources :groups


  get 'users/profile'

  resources :comments
  resources :posts do
    collection do
      get :technology
      get :health
      get :business
      get :outdoors
      get :home
      get :other
    end
  end
  devise_for :admins
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :groups do
    resources :posts
  end

  get 'indexprivate/', to:'posts#indexprivate', as: 'private'
  get 'private_technology/', to:'posts#indexprivate_technology', as: 'private_tec'
  get 'private_health/', to:'posts#indexprivate_health', as: 'private_hea'
  get 'private_business/', to:'posts#indexprivate_business', as: 'private_bus'
  get 'private_outdoors/', to:'posts#indexprivate_outdoors', as: 'private_out'
  get 'private_home/', to:'posts#indexprivate_home', as: 'private_hom'
  get 'private_other/', to:'posts#indexprivate_other', as: 'private_oth'

  #
  # resources :indexprivate, only: [] do
  #   collection do
  #     get :technology_private
  #     get :health_private
  #     get :business_private
  #     get :outdoors_private
  #     get :home_private
  #     get :other_private
  #   end
  # end

  get 'landing/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'posts#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
