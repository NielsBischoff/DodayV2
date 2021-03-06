Rails.application.routes.draw do

  # resources :users
  # resources :tasks

  root 'users#index'

  get '/login'     => 'sessions#new', as: :new_session
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :session


  get 'users/' => 'users#index', as: :users
  get 'users/new' => 'users#new', as: :new_user
  post 'users/' => 'users#create'
  get 'users/:id' => 'users#show', as: :user
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

  get 'tasks' => 'tasks#index', as: :tasks
  get 'tasks/new' => 'tasks#new', as: :new_task
  post 'tasks/' => 'tasks#create'
  get 'tasks/:id' => 'tasks#show', as: :task
  get 'tasks/:id/edit' => 'tasks#edit', as: :edit_task
  patch 'tasks/:id' => 'tasks#update'
  delete 'tasks/:id' => 'tasks#destroy'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  #users GET    /users(.:format)          users#index
  # get 'users' => 'users#index',    as: :users
  # #POST   /users(.:format)          users#create
  # post 'users/' => 'users#create'
  # #new_user GET    /users/new(.:format)      users#new
  # get 'users/new' => 'users#new', as: :new_user
  # #edit_user GET    /users/:id/edit(.:format) users#edit
  # get 'users/:id/edit' => 'user#edit', as: :edit_user
  #
  # #user GET    /users/:id(.:format)      users#show
  # get 'users/:id/show' => 'users#show', as: :show_users
  # #PATCH  /users/:id(.:format)      users#update
  # patch 'users/:id' => 'users#update'
  # #PUT    /users/:id(.:format)      users#update]
  #
  # #DELETE /users/:id(.:format)      users#destroy
  # delete 'users/:id' => 'users#destroy'
  # Example resource route (maps HTTP verbs to controller actions automatically)
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
