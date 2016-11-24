Rails.application.routes.draw do
  resources :cocktails do
    member do
      get 'cocktails/:id/doses/new', to: "cocktails#new_dose"
      post 'cocktails/:id/doses', to: "cocktails#create_dose"
      delete 'cocktails/:id/doses/:id', to: "cocktails#destroy_dose"
    end
  end
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
