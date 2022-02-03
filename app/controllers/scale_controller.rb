class ScaleController < ApplicationController
  
  def index
    @scales = Scale.all.order( 'name' )
      
    @page_title = 'Scales'
  end
  
  def show
    scale = params[:scale]
    @scale = Scale.find( scale )
    
    @page_title = "Scales - #{@scale.name}"
  end
end
