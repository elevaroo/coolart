class OrdersController < ApplicationController

  def create
    @order = Order.new(booking_params)
    @order.user_id = current_user.id
    @order.artwork_id = params[:artwork_id]
    @order.save!
    # respond_to do |format|
    #   if @order.save!
    #     format.html{ redirect_to profile_path }
    #     format.js
    #   else
    #     #display alert
    #     format.html{render "artworks/show"}
    #   end
    # end
  end

  private

  def order_params
    params.require(:order).permit(:artwork_id)
  end
end
