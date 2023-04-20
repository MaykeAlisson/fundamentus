Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :asserts do
    namespace :v1 do
      post 'create', to: 'asserts#create'
      # get 'all/:user_id', to: 'asserts#all'
      # get 'id/:user_id/:id', to: 'asserts#byId'
      # put 'update/:user_id/:id', to: 'asserts#update'
      # delete 'delete/:user_id/:id', to: 'asserts#destroy'
    end
  end

  get '/*a', to: 'application#not_found'
end
