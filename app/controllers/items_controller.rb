class ItemsController < ApplicationController
  def index
    @items = current_user.items

    render("items/index.html.erb")
  end

  def show
    @item = Item.find(params[:id])

    render("items/show.html.erb")
  end

  def new
    @item = Item.new

    render("items/new.html.erb")
  end

  def create
    @item = Item.new

    @item.description = params[:description]
    @item.package_id = params[:package_id]
    @item.amount = params[:amount]
    @item.return_id = params[:return_id]
    @item.order_id = params[:order_id]

    save_status = @item.save

    if save_status == true
      redirect_to("/orders/#{@item.order_id}", :notice => "Item created successfully.")
    else
      @order = Order.find(params[:order_id])
      render("orders/show.html.erb")
    end
  end

  def edit
    @item = Item.find(params[:id])

    render("items/edit.html.erb")
  end

  def update
    @item = Item.find(params[:id])

    @item.description = params[:description]
    @item.package_id = params[:package_id]
    @item.amount = params[:amount]
    @item.return_id = params[:return_id]
    @item.order_id = params[:order_id]

    save_status = @item.save

    if save_status == true
      redirect_to("/items/#{@item.id}", :notice => "Item updated successfully.")
    else
      render("items/edit.html.erb")
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    if URI(request.referer).path == "/items/#{@item.id}"
      redirect_to("/", :notice => "Item deleted.")
    else
      redirect_to(:back, :notice => "Item deleted.")
    end
  end
end
