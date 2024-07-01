Rails.application.routes.draw do
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                       registrations: "users/registrations",
                     }

  get "/current_user", to: "currents#index"

  namespace :api do
    namespace :v1 do
      resources :profiles, only: [:index]
      resources :courses do
        resources :live_sessions, only: [:create, :show, :index]
        resources :videos, only: [:create, :show, :index]
        member do
          post 'send_reminder', to: 'courses#send_reminder'
        end
      end
    end
  end

  post 'send_sms', to: 'sms#send_sms'
end
