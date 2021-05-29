Rails.application.routes.draw do
  root 'contracts#index'
  
  resources :contracts
  resources :referrals
  resources :salesmen
  resources :milestones
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
