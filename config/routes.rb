Rails.application.routes.draw do
  # Routes for the Item resource:
  # CREATE
  get "/items/new", :controller => "items", :action => "new"
  post "/create_item", :controller => "items", :action => "create"

  # READ
  get "/items", :controller => "items", :action => "index"
  get "/items/:id", :controller => "items", :action => "show"

  # UPDATE
  get "/items/:id/edit", :controller => "items", :action => "edit"
  post "/update_item/:id", :controller => "items", :action => "update"

  # DELETE
  get "/delete_item/:id", :controller => "items", :action => "destroy"
  #------------------------------

  # Routes for the Vendor resource:
  # CREATE
  get "/vendors/new", :controller => "vendors", :action => "new"
  post "/create_vendor", :controller => "vendors", :action => "create"

  # READ
  get "/vendors", :controller => "vendors", :action => "index"
  get "/vendors/:id", :controller => "vendors", :action => "show"

  # UPDATE
  get "/vendors/:id/edit", :controller => "vendors", :action => "edit"
  post "/update_vendor/:id", :controller => "vendors", :action => "update"

  # DELETE
  get "/delete_vendor/:id", :controller => "vendors", :action => "destroy"
  #------------------------------

  # Routes for the Order resource:
  # CREATE
  get "/orders/new", :controller => "orders", :action => "new"
  post "/create_order", :controller => "orders", :action => "create"

  # READ
  get "/orders", :controller => "orders", :action => "index"
  get "/orders/:id", :controller => "orders", :action => "show"

  # UPDATE
  get "/orders/:id/edit", :controller => "orders", :action => "edit"
  post "/update_order/:id", :controller => "orders", :action => "update"

  # DELETE
  get "/delete_order/:id", :controller => "orders", :action => "destroy"
  #------------------------------

  # Routes for the Return resource:
  # CREATE
  get "/returns/new/:item_id", :controller => "returns", :action => "new"
  post "/create_return", :controller => "returns", :action => "create"

  # READ
  get "/returns", :controller => "returns", :action => "index"
  get "/returns/:id", :controller => "returns", :action => "show"

  # UPDATE
  get "/returns/:id/edit", :controller => "returns", :action => "edit"
  post "/update_return/:id", :controller => "returns", :action => "update"

  # DELETE
  get "/delete_return/:id", :controller => "returns", :action => "destroy"
  #------------------------------

  devise_for :users
  root 'packages#index'
  # Routes for the Package resource:
  # CREATE
  get "/packages/new/:order_id", :controller => "packages", :action => "new"
  post "/create_package", :controller => "packages", :action => "create"

  # READ
  get "/packages", :controller => "packages", :action => "index"
  get "/packages/:id", :controller => "packages", :action => "show"

  # UPDATE
  get "/packages/:id/edit", :controller => "packages", :action => "edit"
  post "/update_package/:id", :controller => "packages", :action => "update"

  # DELETE
  get "/delete_package/:id", :controller => "packages", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
