Rails.application.routes.draw do
  devise_for :users
       root  "top#index"
       resources :top
       resources :users, only: [:show, :edit, :update]
       resources :groups, only: [:show, :edit, :update]
       resources :questions, only: [:create, :show]
       resources :answers, only: [:new, :create, :edit, :update]


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
