Tweetr::Application.routes.draw do
  devise_for :users
  resources :users do
    resources :roars
    resources :avatars
  end
  root "users#index"
  match('/emailme', {:via => :get, :to => 'users#email'})
end

