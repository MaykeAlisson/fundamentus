Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :users do
    namespace :v1 do
      post 'create', to: 'users#create'
      put 'update/:id', to: 'users#update'
      delete 'delete', to: 'users#destroy'
    end
  end
  
  namespace :auth do
    namespace :v1 do
      post 'login', to: 'auth#login'
    end
  end

  get '/*a', to: 'application#not_found'
end
