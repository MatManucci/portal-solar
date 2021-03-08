Rails.application.routes.draw do
  get 'power_generators/show'
  root to: 'power_generators#index'
  resources :home, only: %i[index]
end
