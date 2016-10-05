Rails.application.routes.draw do
  # Routes for the Picture resource:
  # CREATE
  get "/pictures/new", :controller => "pictures", :action => "new"
  post "/create_picture", :controller => "pictures", :action => "create"

  # READ
  get "/pictures", :controller => "pictures", :action => "index"
  get "/pictures/:id", :controller => "pictures", :action => "show"

  # UPDATE
  get "/pictures/:id/edit", :controller => "pictures", :action => "edit"
  post "/update_picture/:id", :controller => "pictures", :action => "update"

  # DELETE
  get "/delete_picture/:id", :controller => "pictures", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Listing resource:
  # CREATE
  get "/listings/new", :controller => "listings", :action => "new"
  post "/create_listing", :controller => "listings", :action => "create"

  # READ
  get "/listings", :controller => "listings", :action => "index"
  get "/listings/:id", :controller => "listings", :action => "show"

  # UPDATE
  get "/listings/:id/edit", :controller => "listings", :action => "edit"
  post "/update_listing/:id", :controller => "listings", :action => "update"

  # DELETE
  get "/delete_listing/:id", :controller => "listings", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
