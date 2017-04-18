Rails.application.routes.draw do
#root :to => 'users#index'
resources :user_sessions
resources :users

get 'login' => 'user_sessions#new', :as => :login
post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :contacts
  # resources :headers
  # resources :details
  
  resources :verticals
  
  resources :businesses do
    
    resources :phase1s do
        resources :headers, shallow: true
    end
    
    resources :phase2s
    resources :phase3s
    resources :phase4s
  end
  
  get '/dashboard' => 'pages#dashboard'
  get '/settings' => 'pages#settings'
  get '/help' => 'pages#help'
  get '/display' => 'pages#display'
  get '/phase1' => 'phase1s#index'
  get '/phase2' => 'phase2s#index'
  get '/phase3' => 'phase3s#index'
  get '/phase4' => 'phase4s#index'
  
  root 'user_sessions#new'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
