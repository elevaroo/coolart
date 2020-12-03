class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)

    @order.collector_id = current_user.account_id
    @order.artwork_id = params[:order][:artwork_id]
    @order.status = 0
    respond_to do |format|
      if @order.save!
        format.html{ redirect_to profile_path }
        format.js
      else
        #display alert
        format.html{render "artworks/show"}
      end
    end
  end

  def mark_as_shipped
    @order = Order.find(params[:id])
    @order.status = 1
    if @order.save
      redirect_to profile_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:artwork_id)
  end
end
