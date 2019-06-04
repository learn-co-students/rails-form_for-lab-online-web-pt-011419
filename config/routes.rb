Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:new, :show, :edit, :update, :create]
  resources :school_classes, only: [:new, :show, :edit, :update, :create]
end
