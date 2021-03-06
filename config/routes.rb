# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :projects, except: [:show]
  resources :blogs

  resources :blogs do 
    member do
      get :toggle_status
    end
  end
  
  get 'project/:id', to: 'projects#show', as: 'project_show'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: "pages#home"
end
