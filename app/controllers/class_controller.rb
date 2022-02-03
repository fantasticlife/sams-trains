class ClassController < ApplicationController
  
  def index
    @classes = LocomotiveClass.all.order( 'name' )
      
    @page_title = 'Classes'
  end
  
  def show
    locomotive_class = params[:class]
    @locomotive_class = LocomotiveClass.find( locomotive_class )
      
    @page_title = "Classes - #{@locomotive_class.name}"
  end
end
