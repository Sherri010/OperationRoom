Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'developers#index'
 resources :developers
 resources :projects
 resources :assignments
  # resources :developers, shallow: true do
  #   resources :projects, shallow: true
  # end
  #
  # resources :projects, shallow: true do
  #   resources :developers, shallow: true
  # end

  get "/projects/:project_id/developers", to: "developers#index" ,as: "devsassigned"
  get "/projects/:project_id/developers/edit", to: "assignments#new", as: "assginnew"
  post "/projects/:project_id/developers/edit", to: "assignments#create" , as:"assigncreate"
end
