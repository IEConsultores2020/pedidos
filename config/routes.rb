Rails.application.routes.draw do
  get 'pages/info'
  devise_for :users
  resources :orders
  resources :products
  resources :people
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root "companies#index"

    get "/orders", to: "orders#index"
    get "/products", to: "products#index"
    get "/people", to: "people#index"
    get "/companies", to: "companies#index"  
    get "pages/info"
end
