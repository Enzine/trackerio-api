Rails.application.routes.draw do
  resources :sports
  resources :categories
  resources :completed_activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
