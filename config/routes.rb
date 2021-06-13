Rails.application.routes.draw do
  root 'contracts#index'
  
  resources :contracts
  resources :referrals
  resources :salesmen
  get '/milestones', to: 'contracts#milestones'
  get '/milestone/:id', to: 'contracts#edit_milestone', as: "edit_milestone"
  patch "/contracts/:id", to: 'contracts#update', as: "modify_contract"
  get '/docs', to: 'contracts#docs'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
