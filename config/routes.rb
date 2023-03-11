Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  ########## ROOT ##########
  root to: 'centers#index'

  ########## CENTER ##########
  
  # CREATE
  get 'centers/new'
  post 'centers', to: 'centers#create'
  
  # READ
  get 'centers/index'
  get 'centers/show'
  
  # EDIT
  get 'centers/edit'
  patch 'centers/update', to: 'centers#update', as: 'centers_update'
  
  # DELETE
  delete 'centers/delete', to: 'centers#delete', as: 'centers_delete'

  ########## TERAPIST ##########

  # CREATE
  get 'terapists/new'
  post 'terapists', to: 'terapists#create'

  # READ
  get 'terapists/index'
  get 'terapists/show'

  # EDIT
  get 'terapists/edit'
  patch 'terapists/update', to: 'terapists#update', as: 'terapists_update'

  # DELETE
  delete 'terapists/delete', to: 'terapists#delete', as: 'terapists_delete'

  ########## USER ##########

  ########## APPOINTMENT ##########
end
