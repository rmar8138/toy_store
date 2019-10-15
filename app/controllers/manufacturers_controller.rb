class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def new
    
  end

  def create
    @manufacturer = Manufacturer.create(manufacturer_params)
    redirect_to :action => "index"
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.update(manufacturer_params)
    redirect_to @manufacturer
  end

  def destroy
    Manufacturer.find(params[:id]).destroy

    redirect_to :action => "index"
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :location)
  end
end