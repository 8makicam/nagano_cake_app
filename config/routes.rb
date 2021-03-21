Rails.application.routes.draw do
 
  devise_for :admins, path: "/admin", :controllers => {
    :sessions => 'admin/admins/sessions',
    :passwords => 'admin/admins/passwords',
  }
  
  namespace :admin do 
    get "/" => "homes#top"
    resources :customers, only: [:index, :show, :edit, :update]
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :orders, only: [:show, :update]
  end
  
  devise_for :customers, :controllers => {
    :sessions => 'public/customers/sessions',
    :passwords => 'public/customers/passwords',
    :registrations => 'public/customers/registrations',
    :application => 'public/application'
  }

  namespace :public, path: "" do
    root to: "homes#top"
    get "/about" => "homes#about"
    resources :customers, only: [:show, :edit, :update, :destroy, :update]
    resources :items, only: [:index, :show,]
    resources :cart_items, only: [:index, :update, :destroy_item, :destroy_all, :create]
    resources :orders, only: [:new, :confirm, :thanks, :conplete, :index, :show]
    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

