Rails.application.routes.draw do
  #To serve all notes
  get 'bikes/index'
  # #To create and save notes to db
  get '/show', to: 'bikes#show'
  #Root
  get '/', to: 'bikes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
