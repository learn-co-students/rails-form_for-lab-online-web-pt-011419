Rails.application.routes.draw do
  resources :school_classes, only: [:show, :new, :create, :edit, :update] do
    resources :student, only: [:show, :new, :create, :edit, :update ]
end
