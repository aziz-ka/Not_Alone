Rails.application.routes.draw do

  get '/' => 'welcome#index'

  resources :seniors, only: [:create, :edit, :update, :destroy] do
    get :sign_up
    get :profile
  end

  resources :helpers, only: [:create, :edit, :update, :destroy] do
    get :sign_up
    get :profile
  end

  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'

  get 'issues' => 'issues#index'

  get 'twilio' => 'twilio#process_sms'

  get 'profiles' => 'profiles#index'

end
