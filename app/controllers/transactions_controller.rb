class TransactionsController < ApplicationController
  
  def create
    @transaction = current_user.buy_transactions.build(params[:transaction])
    if @transaction.save
      @transaction.process_items
      render :json  => @transaction
    else
      redirect_to cart_url
    end
    
  end
  
  def show
    @transaction = Transaction.find(params[:id])
  end
end
