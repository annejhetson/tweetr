Tweetr::Application.routes.draw do
  devise_for :users
  root "users#index"
end

