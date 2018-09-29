class HomeController < ApplicationController
  def index
    
    if params[:id] == ""
      @nothing = "Error: You didn't type a symbol."
    elsif params[:id]
      @stock = StockQuote::Stock.quote(params[:id])
      if @stock == nil
        @error = "That stock ticker symbol doesn't exist. Please try again."
      end
    end
    
  end
  
  def about
  end
end
