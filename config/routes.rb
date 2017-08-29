Rails.application.routes.draw do
  devise_for :users
  get '/free/create'=>'free#create'
  post '/free/create_it'=>'free#create_it'
  root 'free#list'
  get '/free/show/:id'=>'free#show'
  get '/free/update/:id'=>'free#update'
  post '/free/update_it/:id'=>'free#update_it'
  post '/free/delete/:id'=>'free#delete'
  
  post '/free/show/:id/review/create'=>'review#create'
  post '/free/show/:id/review/delete/:review_id'=>'review#delete'
  
  get '/question/create'=>'question#create'
  post '/question/create_it'=>'question#create_it'
  get '/question/show/:id'=>'question#show'
  get '/question/update/:id'=>'question#update'
  post '/question/update_it/:id'=>'question#update_it'
  post '/question/delete/:id'=>'question#delete'
  
  post '/question/show/:id/answer/create'=>'answer#create'
  post '/question/show/:id/answer/delete/:answer_id'=>'answer#delete'
  
  
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
