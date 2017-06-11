class PackagesController < ApplicationController
  def index
    @packages = current_user.packages

    render("packages/index.html.erb")
  end

  def show
    @package = Package.find(params[:id])

    render("packages/show.html.erb")
  end

  def new
    @package = Package.new

    @package.order_id = params[:order_id]

    render("packages/new.html.erb")
  end

  def create
    @package = Package.new

    @package.notes = params[:notes]
    @package.tracking_number = params[:tracking_number]
    @package.tracking_arrival_date = params[:tracking_arrival_date]
    @package.order_id = params[:order_id]
    @package.date_of_receipt = params[:date_of_receipt]

    save_status = @package.save

    

    if save_status == true
      redirect_to("/packages/#{@package.id}", :notice => "Package created successfully.")
    else
      render("packages/new.html.erb")
    end
  end


  def edit
    @package = Package.find(params[:id])

    render("packages/edit.html.erb")
  end

  def update
    @package = Package.find(params[:id])

    @package.notes = params[:notes]
    @package.tracking_number = params[:tracking_number]
    @package.tracking_arrival_date = params[:tracking_arrival_date]
    @package.order_id = params[:order_id]
    @package.date_of_receipt = params[:date_of_receipt]

    save_status = @package.save

    if save_status == true
      redirect_to("/packages/#{@package.id}", :notice => "Package updated successfully.")
    else
      render("packages/edit.html.erb")
    end
  end

  def destroy
    @package = Package.find(params[:id])

    @package.destroy

    if URI(request.referer).path == "/packages/#{@package.id}"
      redirect_to("/", :notice => "Package deleted.")
    else
      redirect_to(:back, :notice => "Package deleted.")
    end
  end
end
