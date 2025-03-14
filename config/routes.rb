Rails.application.routes.draw do
  devise_for :users
  root "hello#index"
  get "user_details/:id/show" => "user_details#show"
end
