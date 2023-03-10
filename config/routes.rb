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
  
    # EDIT
    get 'centers/edit'
    patch 'centers/update', to: 'centers#update', as: 'centers_update'
  
    # DELETE
    delete 'centers/delete', to: 'centers#delete', as: 'centers_delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
