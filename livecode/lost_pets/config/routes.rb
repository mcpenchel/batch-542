Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pets#index'

  get 'pets',  to: 'pets#index'
  post 'pets', to: 'pets#create'
  
  get 'pets/new', to: 'pets#new', as: :new_pet
  get 'pets/:id', to: 'pets#show', as: :pet
  patch 'pets/:id', to: 'pets#update'

  delete 'pets/:id', to: 'pets#destroy'
  get 'pets/:id/edit', to: 'pets#edit', as: :edit_pet

end
