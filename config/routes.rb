Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }

  authenticated :user do
    resources :participants
  end


  resources :participants
    get '/participants' ,to: 'participants#index'
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

  resources :invoices
    get 'invoices' ,to: 'invoices#index'
    get 'invoices/:id' ,to: 'invoices#show'
    post 'invoices' ,to: 'invoices#create'
    put 'invoices/:id' ,to: 'invoices#update'
    delete 'invoices/:id' ,to: 'invoices#destroy'

  resources :installments
    get 'installments' ,to: 'installments#index'
    get 'installments/:id' ,to: 'installments#show'
    post 'installments' ,to: 'installments#create'
    put 'installments/:id' ,to: 'installments#update'
    delete 'installments/:id' ,to: 'installments#destroy'

  resources :low_installments
    get 'low_installments' ,to: 'low_installments#index'
    get 'low_installments/:id' ,to: 'low_installments#show'
    post 'low_installments' ,to: 'low_installments#create'
    put 'low_installments/:id' ,to: 'low_installments#update'
    delete 'low_installments/:id' ,to: 'low_installments#destroy'
end
