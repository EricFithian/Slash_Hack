Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  as :user do
    get '/users/sign_up', to: 'users/registrations#new_user'
    post '/users/registrations/', to: 'users/registrations#import'
  end

  resources :applications, only: [:index, :new, :show, :create, :edit, :update] do
    resources :products, only: [:index, :new, :create, :edit, :update]
  end
end
