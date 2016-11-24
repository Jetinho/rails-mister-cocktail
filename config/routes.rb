Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create]
      # member do
      #   get 'doses/new', to: "cocktails#new_dose"
      #   post 'doses', to: "cocktails#create_dose"
      #   delete 'doses/:id', to: "cocktails#destroy_dose"
  end
  resources :doses, only: [:destroy]
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
