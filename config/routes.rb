Rails.application.routes.draw do
  resources :good_deeds
  resources :good_guys

  root 'good_guys#index'
end
