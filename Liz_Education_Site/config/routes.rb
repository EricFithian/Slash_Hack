Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise_for :users, path: '', controllers: {registrations: 'users/registrations'}
  # as :user do
  #   post '/users/registrations/', to: 'users/registrations#import'
  # end
  # root :to => 'pages#index'
  # get "/about" => 'pages#about'
  # get "/contact" => 'pages#contact'
  # get "/template" => 'pages#template'

  resources :applications, only: [:index, :new, :show, :create, :edit, :update] do
    put :payment
    resources :workshops, only: [:index, :new, :create, :edit, :update]
    resources :courses, only: [:index, :new, :create, :edit, :update]
    resources :workshops, only: [:index, :new, :create, :edit, :update]
    
  end

  # resources :student_profiles, only: [:index, :create]

  # get "/student_profiles/edit" => "student_profiles#edit"
  # patch "/student_profiles" => "student_profiles#update"

  # resources :school_profiles, only: [:index, :new, :create, :edit, :update] do
  # end

  # resources :local_schools, only: [:index, :new, :create, :edit, :update]
  # post "/registrants/import", to: "registrants#import"
  # resources :registrants
  

  # resources :workshops
  # resources :charges
  # resources :courses
  # resources :course_registrations
end
