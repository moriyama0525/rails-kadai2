Rails.application.routes.draw do
    root to: "users#index"
    get "/new", to:"users#new"
    post "/create", to:"users#create"
    get "/user/:id/edit", to:"users#edit"
    patch "/user/:id", to:"users#update"
    delete "/user/:id", to:"users#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
