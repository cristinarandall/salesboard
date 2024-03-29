Salesboard::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

    match 'add_metric' => 'admins#add_metric'
    match '/users/delete_location ' =>'users#delete_location'
    match '/auth/:provider/callback' => 'users#salesforce_callback'
    match '' => 'landings#index'
    match 'admin' => 'admins#index'
    match 'goals' => 'admins#add_goals'
    match 'goals/:user_id' => 'admins#add_goals'
    match 'leaderboard' => 'admins#leaderboard'
    match 'new' => 'users#new'
    match '/new/:user_id' => 'users#new'
    match '/users/add_salesperson' => 'users#add_salesperson'
    match '/user_sessions/create_new' => 'user_sessions#create_new'
    match 'admins/add_new_goal' => 'admins#add_new_goal'
    match 'signout' => 'user_sessions#destroy'
    match 'register' => 'user_sessions#new'
    match 'settings' => 'users#manager_account_settings'
    match '/settings/:user_id' => 'users#manager_account_settings'
    match '/users/delete' => 'users#delete'
    match '/users/add_location' =>'users#add_location'

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
