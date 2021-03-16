Rails.application.routes.draw do
  namespace :public do
    get 'deliveries/index'
    get 'deliveries/edit'
  end
  namespace :public do
    get 'orders/index'
    get 'orders/new'
    get 'orders/show'
  end
  get 'public/orders'
  get 'public/new'
  get 'public/index'
  get 'public/show'
  namespace :public do
    get 'cart_items/index'
    get 'cart_items/update'
    get 'cart_items/destroy_item'
    get 'cart_items/destroy_all'
    get 'cart_items/create'
  end
  devise_for :admins
  namespace :admin do 
  end
  
  devise_for :customers, :controllers => {
 :sessions => 'public/customerssessions',
 :passwords => 'public/customers/passwords',
 :registrations => 'public/customers/registrations',
 :application => 'public/application'
  }

  namespace :public, path: "" do
    root to: "homes#top"
    get "/about" => "homes#about"
    resources :customers, only: [:show, :edit]
    resources :items, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

