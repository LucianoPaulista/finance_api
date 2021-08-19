Rails.application.routes.draw do
  resources :participants
    get 'participants' ,to: 'participants#index'
    get 'participants/:id' ,to: 'participants#show'
    post 'participants' ,to: 'participants#create'
    put 'participants/:id' ,to: 'participants#update'
    delete 'participants/:id' ,to: 'participants#destroy'

  resources :addresses
    get 'addresses' ,to: 'addresses#index'
    get 'addresses/:id' ,to: 'addresses#show'
    post 'addresses' ,to: 'addresses#create'
    put 'addresses/:id' ,to: 'addresses#update'
    delete 'addresses/:id' ,to: 'addresses#destroy'

  resources :invoice_types
    get 'invoice_types' ,to: 'invoice_types#index'
    get 'invoice_types/:id' ,to: 'invoice_types#show'
    post 'invoice_types' ,to: 'invoice_types#create'
    put 'invoice_types/:id' ,to: 'invoice_types#update'
    delete 'invoice_types/:id' ,to: 'invoice_types#destroy'

  resources :low_types
    get 'low_types' ,to: 'low_types#index'
    get 'low_types/:id' ,to: 'low_types#show'
    post 'low_types' ,to: 'low_types#create'
    put 'low_types/:id' ,to: 'low_types#update'
    delete 'low_types/:id' ,to: 'low_types#destroy'
end
