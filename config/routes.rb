Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  mount Sidekiq::Web => '/sidekiq'
  resources :users, only: [:new, :create, :destroy] do
    get :confirm, on: :collection
  end
end
