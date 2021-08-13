Rails.application.routes.draw do
  resources :enderecos
  resources :participantes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get 'participantes' ,to: 'participantes#index'
    get 'participantes/:id' ,to: 'participantes#show'
    post 'participantes' ,to: 'participantes#create'
    put 'participantes/:id' ,to: 'participantes#update'
    delete 'participantes/:id' ,to: 'participantes#destroy'
end
