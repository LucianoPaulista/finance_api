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
end
