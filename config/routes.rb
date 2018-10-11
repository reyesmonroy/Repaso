Rails.application.routes.draw do
  resources :clientes
  resources :catalogos
  resources :factura_detalles
  resources :facturas
  resources :productos
  resources :categorias
  resources :marcas
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get '/consumo/:nit', to: 'clientes#consumir'
end
