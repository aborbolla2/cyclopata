Rails.application.routes.draw do
  resources :package_types
  resources :packages
  resources :coach_types
  resources :coaches
  # landing page
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'admin', to: "home#admin"
  get 'settings', to: "home#settings"

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  resources :clients, :path => 'usuarios', :path_names => { :edit => 'editar', :delete => 'eliminar', :show => 'ver', :new => 'nuevo' } do
    collection do
      get '/:id', to: 'clients#show', as:'show'
      get 'deactivate/:id', to: 'clients#deactivate', as:'deactivate'
      post 'add_clases',to:'clients#add_clases',as:'add_clases'
    end
  end

  get 'search_clients', to: 'clients#search_clients', as: 'search_clients'



  resources :coaches, :path => 'coaches' ,:path_names => { :edit => 'editar', :delete => 'eliminar', :show => 'ver', :new => 'nuevo' }

  resources :coach_types, :path => 'tipo_de_coaches' ,:path_names => { :edit => 'editar', :delete => 'eliminar', :show => 'ver', :new => 'nuevo' }
  resources :packages, :path => 'paquetes' ,:path_names => { :edit => 'editar', :delete => 'eliminar', :show => 'ver', :new => 'nuevo' }
  resources :package_types, :path => 'tipo_de_paquetes' ,:path_names => { :edit => 'editar', :delete => 'eliminar', :show => 'ver', :new => 'nuevo' }

  scope controller: :coach_types do
    post 'delete_coach_type/:id', to: 'coach_types#delete_coach_type', as: 'delete_coach_type'

  end
  scope controller: :coaches do
    post 'deactivate_coach/:id', to: 'coaches#deactivate_coach', as:'deactivate_coach'
    post 'activate_coach/:id', to: 'coaches#activate_coach', as:'activate_coach'
  end

  scope controller: :packages do
    post 'deactivate_package/:id', to: 'packages#deactivate_package', as:'deactivate_package'
    post 'activate_package/:id', to: 'packages#activate_package', as:'activate_package'
  end

end


