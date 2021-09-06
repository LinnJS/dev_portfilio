# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  resources :projects, except: [:show]
  resources :blogs
  
  get 'project/:id', to: 'projects#show', as: 'project_show'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: "pages#home"
end
