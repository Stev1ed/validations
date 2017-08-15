Rails.application.routes.draw do
  resources :logins
  resources :orders
  resources :salaries
  resources :people
  resources :companies
  resources :educations
  resources :mysites
  resources :sign_ups
  resources :registrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
