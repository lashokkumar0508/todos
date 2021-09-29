Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #RESOURCE
  #Todo is a Resource
  # -- List of respurces can be see : index
  # -- Single Resource can be seen : show
  # -- Create Resources
  get "todos", to: "todos#index"
  get "todos/create", to: "todos#create"
  get "todos/:id", to: "todos#show"
end
