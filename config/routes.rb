Rails.application.routes.draw do
  resources :images do
    put :sort, on: :collection
  end
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'welcome#index'
end
