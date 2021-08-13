Rails.application.routes.draw do
  resources :participantes
    get 'participantes' ,to: 'participantes#index'
    get 'participantes/:id' ,to: 'participantes#show'
    post 'participantes' ,to: 'participantes#create'
    put 'participantes/:id' ,to: 'participantes#update'
    delete 'participantes/:id' ,to: 'participantes#destroy'

  resources :enderecos
    get 'enderecos' ,to: 'enderecos#index'
    get 'enderecos/:id' ,to: 'enderecos#show'
    post 'enderecos' ,to: 'enderecos#create'
    put 'enderecos/:id' ,to: 'enderecos#update'
    delete 'enderecos/:id' ,to: 'enderecos#destroy'
end
