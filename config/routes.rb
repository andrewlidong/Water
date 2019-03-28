Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, default: {format: :json} do
    resources :users, only: [:create, :update, :show]
    resource :session, only: [:create, :destroy]

    resources :stories do
      resources :comments, only: [:create, :destroy]
    end
    
    post '/followings/:id', to: 'followings#create'
    delete '/followings/:id', to: 'followings#destroy'

    post '/claps', to: 'claps#create'
  end

end
