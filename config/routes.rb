Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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

  # PUT new toy
  put "/toys/:id", to: "toys#update"
  patch "/toys/:id", to: "toys#update"

  # DELETE toy by id
end
