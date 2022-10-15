Rails.application.routes.draw do
    resources :users 
    resources :tweets
    post 'top/login'
    get 'top/logout'
    get 'top/main'
    root 'tweets#index'
end
