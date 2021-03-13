Rails.application.routes.draw do
  namespace :admin do 
  devise_for :admins, path: '', controllers: {
      sessions: 'admin/admins/sessions'
  }
  end
  
  scope module: :public do
  devise_for :customers, controllers: {
      sessions: 'public/customers/sessions',
      registrations: 'public/customers/registrations',
      passwords: 'public/customers/passwords'
    }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

