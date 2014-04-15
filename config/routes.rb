Tweetr::Application.routes.draw do
  devise_for :users
  resources :users do
    resources :roars
  end
  root "users#index"
  match('/emailme', {:via => :get, :to => 'users#email'})
end

