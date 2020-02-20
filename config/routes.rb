Rails.application.routes.draw do
  root 'faces#index'

 

  resources :faces 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
