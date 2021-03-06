Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats do 
    resources :cat_rental_requests, only: [:update]
  end 

  resources :cat_rental_requests do
    member do 
      patch 'approve'
      patch 'deny'
    end 
  end 
end
