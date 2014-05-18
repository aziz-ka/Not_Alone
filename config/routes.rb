Rails.application.routes.draw do
  get '/' => 'welcome#index'
  get 'seniors/sign_up' => 'seniors#sign_up' # instead of new
  post 'seniors' => 'seniors#create'
  get 'seniors/:id/profile' => 'seniors#profile' # instead of show
  get 'seniors/:id/edit' => 'seniors#edit'
  put 'seniors/:id/profile' => 'seniors#update'
  delete 'seniors/:id' => 'seniors#delete'
  get 'twilio' => 'twilio#process_sms'

end