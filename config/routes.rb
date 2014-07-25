Rails.application.routes.draw do

  get '/' => 'welcome#index'

  resources :seniors, only: [:create, :edit, :update, :destroy]
  get 'seniors/sign_up' => 'seniors#sign_up'
  get 'seniors/profile' => 'seniors#profile'

  resources :helpers, only: [:create, :edit, :update, :destroy]
  get 'helpers/sign_up' => 'helpers#sign_up'
  get 'helpers/profile' => 'helpers#profile'

  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'

  get 'issues' => 'issues#index'

  get 'twilio' => 'twilio#process_sms'

  get 'profiles' => 'profiles#index'

end
