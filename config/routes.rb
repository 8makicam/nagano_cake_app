Rails.application.routes.draw do
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

