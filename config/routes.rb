Rails.application.routes.draw do
  root 'companies#index'
     resources :companies do
       resources :employees
     end

     resources :employees
end
