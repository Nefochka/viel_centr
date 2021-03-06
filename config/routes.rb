VielCentr::Application.routes.draw do

  get 'admin' => 'admin#admin_page'
  get 'admin_appointments' => 'admin#admin_appointments'
  get 'admin_gifts' => 'admin#admin_gifts'
  get 'admin_users' => 'admin#admin_users'
  get 'admin_feedbacks' => 'admin#admin_feedbacks'
  get 'login' => 'user_sessions#new'
  post 'login' => 'user_sessions#create'
  delete 'logout' => 'user_sessions#destroy'
  get 'signup' => 'users#new'

  root 'viel#home'

  resources :gift_certificates

  resources :feedbacks

  resources :appointments

  resources :simplebox

  resources :users

  resources :admin
    get "admin/admin_page"

  get "viel/massage" => 'viel#massage'
  get "viel/cosmetics"
  get "viel/gallery"
  get "viel/service"
  get "viel/contacts"
  get "viel/feedback"
  get "viel/gift_certificate"
  get "viel/gift"
  get "viel/program_certificates"
  get "viel/advice"
  get "viel/appointment"
  get "viel/home"
  get "viel/cosmetology"
  get "viel/spa_procedures"
  get "viel/wraps"
  get "viel/peelings"
  get "viel/thai_massage"
  get "viel/manicure_pedicure"
  get "viel/psychologist"
  get "viel/astrologer"
  get "viel/education"
  get "viel/about_us"
  get "viel/our_experts"
  get "viel/spa_etiquette"
  get "viel/bychik"
  get "viel/zadorozhnaya"
  get "viel/rudenko"
  get "viel/mbutuka"
  get "viel/hramcovskaya"
  get "viel/yakubjanova"
  get "viel/sharevich"
  get "viel/sidenko"
  get "viel/lupandina"
  get "viel/svetlova"
  get "viel/obuhovskij"
  get "viel/ovcharenko"
  get "viel/children"
  get "viel/documents"
  get "viel/vacancies"
  get "viel/manipulation"
  get "viel/medical_gymnastics"
  get "viel/fizio_procedures"
  get "viel/permanent_cosmetics"
  get "viel/make_up"
  get "viel/spa_programs"
  get "viel/useful_tips"
  get "viel/useful_tips_1"
  get "viel/useful_tips_2"
  get "viel/useful_tips_3"
  get "viel/useful_tips_4"
  get "viel/action_1"
  get "viel/action_2"
  get "viel/action_3"
  get "viel/action_4"
  get "viel/banner_1"

  resources :orders
    get "orders/new"


  resources :viel, :only => [:index] do
    get :massage, :on => :collection
    get :cosmetology, :on => :collection
    get :spa_procedures, :on => :collection
    get :wraps, :on => :collection
    get :peelings, :on => :collection
    get :thai_massage, :on => :collection
    get :manicure_pedicure, :on => :collection
    get :psychologist, :on => :collection
    get :astrologer, :on => :collection
    get :education, :on => :collection

    get :cosmetics, :on => :collection
    get :gallery, :on => :collection
    get :service, :on => :collection
    get :contacts, :on => :collection
    get :feedback, :on => :collection
    get :gift_certificate, :on => :collection
    get :gift, :on => :collection
    get :program_certificates, :on => :collection
    get :advice, :on => :collection
    get :appointment, :on => :collection
    get :home, :on => :collection
    get :about_us, :on => :collection
    get :our_experts, :on => :collection
    get :spa_etiquette, :on => :collection
    get :bychik, :on => :collection
    get :zadorozhnaya, :on => :collection
    get :rudenko, :on => :collection
    get :mbutuka, :on => :collection
    get :hramcovskaya, :on => :collection
    get :yakubjanova, :on => :collection
    get :sharevich, :on => :collection
    get :sidenko, :on => :collection
    get :lupandina, :on => :collection
    get :svetlova, :on => :collection
    get :obuhovskij, :on => :collection
    get :ovcharenko, :on => :collection
    get :children, :on => :collection
    get :documents, :on => :collection
    get :vacancies, :on => :collection
    get :manipulation, :on => :collection
    get :medical_gymnastics, :on => :collection
    get :fizio_procedures, :on => :collection
    get :permanent_cosmetics, :on => :collection
    get :make_up, :on => :collection
    get :spa_programs, :on => :collection
    get :useful_tips, :on => :collection
    get :useful_tips_1, :on => :collection
    get :useful_tips_2, :on => :collection
    get :useful_tips_3, :on => :collection
    get :useful_tips_4, :on => :collection
    get :action_1, :on => :collection
    get :action_2, :on => :collection
    get :action_3, :on => :collection
    get :action_4, :on => :collection
    get :banner_1, :on => :collection
  end



  # get "viel/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


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
