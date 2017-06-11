class ReturnsController < ApplicationController
  def index
    @returns = current_user.returns

    render("returns/index.html.erb")
  end

  def show
    @return = Return.find(params[:id])

    render("returns/show.html.erb")
  end

  def new
    @return = Return.new

    @return.item_id = params[:item_id]

    render("returns/new.html.erb")
  end

  def create
    @return = Return.new

    @return.ship_date = params[:ship_date]
    @return.return_by_date = params[:return_by_date]
    @return.return_notes = params[:return_notes]
    @return.vendor_receipt_date = params[:vendor_receipt_date]
    @return.refund_receipt_date = params[:refund_receipt_date]
    @return.return_reason = params[:return_reason]

    save_status = @return.save

    if save_status == true

      item = Item.find(params[:item_id])
      item.return_id = @return.id
      item.save

      redirect_to("/returns/#{@return.id}", :notice => "Return created successfully.")
    else
      render("returns/new.html.erb")
    end
  end

  def edit
    @return = Return.find(params[:id])

    render("returns/edit.html.erb")
  end

  def update
    @return = Return.find(params[:id])

    @return.ship_date = params[:ship_date]
    @return.return_by_date = params[:return_by_date]
    @return.return_notes = params[:return_notes]
    @return.vendor_receipt_date = params[:vendor_receipt_date]
    @return.refund_receipt_date = params[:refund_receipt_date]
    @return.return_reason = params[:return_reason]

    save_status = @return.save

    if save_status == true
      redirect_to("/returns/#{@return.id}", :notice => "Return updated successfully.")
    else
      render("returns/edit.html.erb")
    end
  end

  def destroy
    @return = Return.find(params[:id])

    @return.destroy

    if URI(request.referer).path == "/returns/#{@return.id}"
      redirect_to("/", :notice => "Return deleted.")
    else
      redirect_to(:back, :notice => "Return deleted.")
    end
  end
end
