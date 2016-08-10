Rails.application.routes.draw do
  use_doorkeeper

  root 'pages#welcome'

  # devise_for :users
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations"}
  # devise_for :users, path: "users" , :controllers => {
  #     :sessions =>  "users/sessions",
  #     :registrations =>  "users/registrations"
  # }

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  get "/pages/:action", :controller => :pages

  mount ApplicationAPI => '/api'

  resources :homeleos do
    collection do
      get :admin_one
      get :admin_two
      get :cs_one
      get :cs_two
    end
  end

  resources :wuleis do
    collection do
      get :wue
    end
  end
  resources :wxh_leis do
    collection do
      get :wue
    end
  end
  resources :pages do
    collection do
      get :welcome
      get :secret
      get :access_denied
    end
  end

  namespace :leots do
    resources :homeleos do
      collection do
        get :admin_one
        get :admin_two
        get :cs_one
        get :cs_two
      end
    end
    resources :wuleos do
      collection do
        get :wue
      end
    end
  end

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
