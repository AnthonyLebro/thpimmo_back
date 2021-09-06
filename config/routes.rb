Rails.application.routes.draw do

  resources :locations
  resources :properties
  resources :categories
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: %w[show]
    end
  end

  devise_for :users,
    defaults: { format: :json },
    path: '',
    path_names: {
      sign_in: 'api/login',
      sign_out: 'api/logout',
      registration: 'api/signup'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }
end
