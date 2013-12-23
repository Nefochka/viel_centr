VielCentr::Application.routes.draw do
  resources :users

  get "viel/massage" => 'viel#massage'
  get "viel/cosmetics"
  get "viel/gallery"
  get "viel/service"
  get "viel/contacts"
  get "viel/feedback"
  get "viel/gift_certificate"
  get "viel/program_certificates"
  get "viel/advice"
  get "viel/appointment"
  get "viel/home"
  get "viel/cosmetology"
  get "viel/spa_procedures"
  get "viel/wraps"
  get "viel/peelings"
  get "viel/education"
  get "viel/about_us"
  get "viel/spa_etiquette"
  get "viel/bychik"
  get "viel/chernyakova"
  get "viel/mbutuka"
  get "viel/hramcovskaya"
  get "viel/vasilenko"


  resources :viel, :only => [:index] do
    get :massage, :on => :collection
    get :cosmetology, :on => :collection
    get :spa_procedures, :on => :collection
    get :wraps, :on => :collection
    get :peelings, :on => :collection
    get :education, :on => :collection

    get :cosmetics, :on => :collection
    get :gallery, :on => :collection
    get :service, :on => :collection
    get :contacts, :on => :collection
    get :feedback, :on => :collection
    get :gift_certificate, :on => :collection
    get :program_certificates, :on => :collection
    get :advice, :on => :collection
    get :appointment, :on => :collection
    get :home, :on => :collection
    get :about_us, :on => :collection
    get :spa_etiquette, :on => :collection
    get :bychik, :on => :collection
    get :chernyakova, :on => :collection
    get :mbutuka, :on => :collection
    get :hramcovskaya, :on => :collection
    get :vasilenko, :on => :collection

  end



  # get "viel/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 root 'viel#index'

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
