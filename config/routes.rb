Rails.application.routes.draw do
  resources :complaints, except: [:create]
  resources :conpanies do
      resources :complaints, only: [:create]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'conpanies#index'
end


