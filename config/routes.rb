Rails.application.routes.draw do
  devise_for :customers
  
  namespace :admin do
    get 'homes/top'
  end

  # namespace :admin do
  #   resources :sessions,only: [:new,:create,:destroy]
  # end

  namespace :admin do
    resources :items,except: [:destroy]
  end

  namespace :admin do
    resources :genres,only: [:index,:create,:edit,:update]
  end

  namespace :admin do
    resources :customers,only: [:index,:show,:edit,:update]
  end

  namespace :admin do
    resources :orders,only: [:show,:update]
  end

  namespace :admin do
    resources :order_details,only: [:update]
  end

  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end

  namespace :public do
    resources :orders,only: [:new,:create,:index,:show]
    get 'orders/comfirm'
    get 'orders/complete'
  end

  namespace :public do
    resources :cart_items,only: [:index,:update,:destroy,:create]
    get 'cart_items/destroy_all'
  end

  namespace :public do
    resources :customers,only: [:show,:edit,:update]
    get 'customers/unsubscibe'
    get 'customers/withdraw'
    patch 'customers/withdraw'
  end

  namespace :public do
    get 'items/index'
    get 'items/show'
  end

  namespace :public do
   resources :registrations,only: [:get,:post]
  end

  namespace :public do
    resources :sessions,only: [:new,:create,:destroy]
  end

  namespace :public do
    resources :addresses,only: [:index,:edit,:create,:update,:destroy]
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
