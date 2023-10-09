Rails.application.routes.draw do
  # resources :crew_members
  resources :productions, only: [:index, :show, :create, :update]

end
