Rails.application.routes.draw do
  
  # this is for visualizing 
   if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
   end
  

  
  get "users/index"
  get "users/show"

   # day 11
  # resources :products, only: [:index, :show]   #we need to remove the new +prduct if that exists and etc that not be take root if we mentioned then it will creashes

   resources :products do
    collection do
      get 'out_of_stock'
    end
  end
  get "pages/home" 
  
   resources :users

   resources :customers do
    collection do
      get 'blacklisted_customers'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  #day 11
 # skipps it       # includes what routes need
  # resources :products, except: [:index, :show]
 
 
end
