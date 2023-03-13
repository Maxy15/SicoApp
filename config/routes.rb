Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'

  ########## ROOT ##########
  root to: 'centers#index'

  ########## USER ##########
  devise_for :users, 
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  },
  path: '', 
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register' 
  }

  # READ
  get 'users/:id', to: 'users#show'

  # DELETE
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user

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


  ########## APPOINTMENT ##########

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
