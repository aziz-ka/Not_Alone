Rails.application.routes.draw do

  get '/' => 'welcome#index'
  get 'seniors/sign_up' => 'seniors#sign_up' # instead of new
  post 'seniors' => 'seniors#create'
  get 'seniors/profile' => 'seniors#profile' # instead of show
  get 'seniors/profile/edit' => 'seniors#edit'
  put 'seniors/profile' => 'seniors#update'
  delete 'seniors/:id' => 'seniors#delete'


  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'

  get 'helpers/sign_up' => 'helpers#sign_up'
  post 'helpers' => 'helpers#create'
  get 'helpers/:id/profile' => 'helpers#profile'
  get 'helpers/:id/edit' => 'helpers#edit'
  put 'helpers/:id/profile' => 'helpers#update'
  delete 'helpers/:id' => 'helpers#delete'

  get 'issues' => 'issues#index'
  
  get 'twilio' => 'twilio#process_sms'

  get 'profiles' => 'profiles#index'

end

#             root GET    /                                            planets#index
#     planet_moons POST   /planets/:planet_id/moons(.:format)          moons#create
#  new_planet_moon GET    /planets/:planet_id/moons/new(.:format)      moons#new
# edit_planet_moon GET    /planets/:planet_id/moons/:id/edit(.:format) moons#edit
#      planet_moon PATCH  /planets/:planet_id/moons/:id(.:format)      moons#update
#                  PUT    /planets/:planet_id/moons/:id(.:format)      moons#update
#                  DELETE /planets/:planet_id/moons/:id(.:format)      moons#destroy
#          planets GET    /planets(.:format)                           planets#index
#                  POST   /planets(.:format)                           planets#create
#       new_planet GET    /planets/new(.:format)                       planets#new
#      edit_planet GET    /planets/:id/edit(.:format)                  planets#edit
#           planet GET    /planets/:id(.:format)                       planets#show
#                  PATCH  /planets/:id(.:format)                       planets#update
#                  PUT    /planets/:id(.:format)                       planets#update
#                  DELETE /planets/:id(.:format)                       planets#destroy

