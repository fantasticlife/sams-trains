class OperatorLiveryController < ApplicationController
  
  def index
    operator = params[:operator]
    @operator = Operator.find( operator )
      
    @page_title = "Operators - #{@operator.name} - Liveries"
  end
end
