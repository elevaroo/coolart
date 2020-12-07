class PaymentsController < ApplicationController
  def new
    @order = current_user.account.orders.where(status: 'pending').find(params[:order_id])
  end
end
