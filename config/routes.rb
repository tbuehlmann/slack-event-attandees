Rails.application.routes.draw do
  resources :events do
    resources :event_attandees, only: [:create, :update]
  end
end
