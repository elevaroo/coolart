class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)

    @order.collector_id = current_user.account_id
    @order.artwork_id = params[:order][:artwork_id]
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

  private

  def order_params
    params.require(:order).permit(:artwork_id)
  end
end
