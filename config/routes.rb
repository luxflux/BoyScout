Rails.application.routes.draw do
  resources :good_guys, only: [:new, :create, :show] do
    resources :good_deeds, only: [:new, :create ]
  end

  get '/good_guys', to: redirect('/')
  root 'good_guys#index'
end
