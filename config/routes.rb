Rails.application.routes.draw do
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index

  end

  devise_for :users,
             path: 'admin',
             path_names: { sign_in: 'login', sign_out: 'logout' },
             controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  get 'releases/:project/:version', to: 'releases#show', constraints: { version: /[^\/]+/}

  get 'releases', to: 'releases#index'

  post 'releases', to: 'releases#create'

  root 'releases#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
