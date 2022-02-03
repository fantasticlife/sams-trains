class OperatorModelController < ApplicationController
  
  def index
    operator = params[:operator]
    @operator = Operator.find( operator )
      
    @page_title = "Operators - #{@operator.name} - Models"
  end
end
