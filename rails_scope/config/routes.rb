Rails.application.routes.draw do
  #To serve all notes
  get 'note/index'
  #To create and save notes to db
  get 'note/create'
  #Root
  get '/', to: 'note#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
