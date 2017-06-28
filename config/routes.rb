Rails.application.routes.draw do
  root to: 'singers#index'
  resources :singers do
    resources :albums
  end
end
