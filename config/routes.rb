Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#index'
  
  get 'pages/index'

  #Rotas montar selects
  get 'bancos/all'
  get 'contas/all'
  get 'pessoas/all'

  resources :contas
  resources :pessoas
  resources :bancos
  resources :movimentos
  
  devise_for :usuarios, :skip => [:registrations] 

  #Rotas JSON(País, Estado, Cidade)
  get 'enderecos/association'
  get 'enderecos/paises'
  get 'enderecos/:id/pais', to: 'enderecos#pais'
  get 'enderecos/estados'
  get 'enderecos/:id/estado', to: 'enderecos#estado'
  get 'enderecos/cidades'
  get 'enderecos/:id/cidade', to: 'enderecos#cidade'
end
