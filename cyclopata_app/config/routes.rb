Rails.application.routes.draw do
  # landing page
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'admin', to: "home#admin"

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  resources :clients, :path => 'usuarios', :path_names => { :edit => 'editar', :delete => 'eliminar', :show => 'ver', :new => 'nuevo' }



end
