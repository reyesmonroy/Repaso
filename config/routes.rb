Rails.application.routes.draw do
  resources :factura_detalles
  resources :facturas
  resources :productos
  resources :categorias
  resources :marcas
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
