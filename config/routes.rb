Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "custom_cards#index"

  resources :custom_cards do
    resources :comments
  end
end
