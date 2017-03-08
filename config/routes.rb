Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'developers#index'
  resources :developers
  resources :projects
  resources :assignments

  get "/assignments/project/:id", to: "assignments#show" , as:"devsassigned"

end
