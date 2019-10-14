Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # GET all toys
  get "/toys", to: "toys#index", as: "toys"

  # GET new toy form page
  get "/toys/new", to: "toys#new", as: "new_toy"

  # GET toy by id
  get "/toys/:id", to: "toys#show", as: "toy"

  # POST new toy
  post "/toys", to: "toys#create"

  # GET edit toy form page

  # PUT new toy

  # DELETE toy by id
end
