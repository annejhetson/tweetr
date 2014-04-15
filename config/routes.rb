Tweetr::Application.routes.draw do
  devise_for :users
  root "users#index"
  match('/emailme', {:via => :get, :to => 'users#email'})
end

