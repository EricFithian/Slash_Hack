Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/about" => 'pages#about'
  get "/contact" => 'pages#contact'

  resources :applications, only: [:index, :new, :show, :create, :edit, :update] do
    put :payment
    resources :camps, only: [:index, :new, :create, :edit, :update]
  end

  resources :student_profiles, only: [:index, :create]

  get "/student_profiles/edit" => "student_profiles#edit"
  patch "/student_profiles" => "student_profiles#update"

  resources :school_profiles, only: [:index, :new, :create, :edit, :update] do
  end

  resources :charges
  resources :classes
  resources :class_registrations
  resources :workshops
end
