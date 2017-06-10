Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  as :user do
    get '/schools/sign_up', to: 'users/registrations#new_school'
    post '/users/registrations/', to: 'users/registrations#import'
  end

  resources :applications, only: [:index, :new, :show, :create, :edit, :update] do
    resources :products, only: [:index, :new, :create, :edit, :update]
    resources :work_experiences, only: [:index, :new, :create, :edit, :update]
    resources :references, only: [:index, :new, :create, :edit, :update]
    resources :documents, only: [:index, :new, :create, :edit, :update]
  end
end
