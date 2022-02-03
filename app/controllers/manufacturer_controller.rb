class ManufacturerController < ApplicationController
  
  def index
    @manufacturers = Manufacturer.all.order( 'name' )
      
    @page_title = 'Manufacturers'
  end
  
  def show
    manufacturer = params[:manufacturer]
    @manufacturer = Manufacturer.find( manufacturer )
      
    @page_title = "Manufacturers - #{@manufacturer.name}"
  end
end
