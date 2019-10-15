Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  ########
  # TOYS #
  ########

  # GET all toys
  get "/toys", to: "toys#index", as: "toys"

  # POST new toy
  post "/toys", to: "toys#create"

  # GET new toy form page
  get "/toys/new", to: "toys#new", as: "new_toy"

  # GET toy by id
  get "/toys/:id", to: "toys#show", as: "toy"

  # GET edit toy form page
  get "/toys/:id/edit", to: "toys#edit", as: "edit_toy"

  # PUT toy by id
  put "/toys/:id", to: "toys#update"
  patch "/toys/:id", to: "toys#update"

  # DELETE toy by id
  delete "/toys/:id", to: "toys#destroy"

  #########
  # USERS #
  #########

  # POST new users
  post "/users", to: "users#create", as: "users"

  # GET new user form page
  get "/users/new", to: "users#new", as: "new_user"

  # GET user by id
  get "/users/:id", to: "users#show", as: "user"

  # GET edit user page
  get "/users/:id/edit", to: "users#edit", as: "edit_user"

  # PUT user by id
  put "/users/:id", to: "users#update"
  patch "/users/:id", to: "users#update"

  # DELETE user by id
  delete "/users/:id", to: "users#destroy"

  #################
  # MANUFACTURERS #
  #################

  # GET all manufacturers
  get "/manufacturers", to: "manufacturers#index", as: "manufacturers"

  # POST new manufacturer
  post "/manufacturers", to: "manufacturers#create"

  # GET new manufacturer form page
  get "/manufacturers/new", to: "manufacturers#new", as: "new_manufacturer"

  # GET manufacturer by id
  get "/manufacturers/:id", to: "manufacturers#show", as: "manufacturer"

  # GET edit manufacturer form page
  get "/manufacturers/:id/edit", to: "manufacturers#edit", as: "edit_manufacturer"

  # PUT manufacturer by id
  put "/manufacturers/:id", to: "manufacturers#update"
  patch "/manufacturers/:id", to: "manufacturers#update"

  # DELETE manufacturer by id
  delete "/manufacturers/:id", to: "manufacturers#destroy"
end
