class OperatorController < ApplicationController
  
  def index
    @operators = Operator.all.order( 'name' )
      
    @page_title = 'Operators'
  end
  
  def show
    operator = params[:operator]
    @operator = Operator.find( operator )
      
    @page_title = "Operators - #{@operator.name}"
  end
end
