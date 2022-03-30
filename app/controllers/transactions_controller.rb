class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    render json: @transactions
  end
  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end
  def create
    @transaction = Transaction.create(transaction_params)
    if @transaction.save!
      render json: @transaction
    else
      render error: {error: 'Unable to create transaction'}, status: 400
    end
  end
  private
  def transaction_params
    params.require(:transaction).permit(:customerID, :inputAmount, :inputCurrency, :outputAmount, :outputCurrency, :date)
  end
end
