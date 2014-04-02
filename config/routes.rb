Learn::Application.routes.draw do
  match('/', {via: :get, to: 'units#index'})
  match('units', {via: :get, to: 'units#index'})
  match('units', {via: :post, to: 'units#create'})
  match('units/new', {via: :get, to: 'units#new'})
  match('units/:id', {via: :get, to: 'units#show'})
  match('units/:id/edit', {via: :get, to: 'units#edit'})
  match('units/:id', {via: :patch, to: 'units#update'})
  match('units/:id', {via: :delete, to: 'units#destroy'})
end
