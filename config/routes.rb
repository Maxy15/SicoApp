Rails.application.routes.draw do
  ########## ROOT ##########
  root to: 'centers#index'

  ########## CENTER ##########

  # CREATE
  get 'centers/new'
  post 'centers', to: 'centers#create'

  # READ
  get 'centers/index'
  get 'centers/show'

  #EDIT
  get 'centers/edit'
  patch 'centers/update', to: 'centers#update', as: 'centers_update'

  # DELETE
  delete 'centers/delete', to: 'centers#delete', as: 'centers_delete'

  ########## PSYCHOLOGIST ##########

  # CREATE
  get 'pyschologists/new'
  post 'ppyschologists', to: 'pyschologists#create'
  get 'pyschologists/index'
  get 'pyschologists/show'
  get 'pyschologists/edit'
end
