Rails.application.routes.draw do
  resources :companies do
    resources :employees, only: [:create, :destroy]
  end
  resources :areas
  root 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
