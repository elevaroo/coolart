class OrdersController < ApplicationController
  def create
    @artwork = Artwork.find(params[:artwork_id])
    @order = Order.create!(artwork: @artwork, amount: @artwork.price, status: 'pending', collector_id: current_user.account_id)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @artwork.name,
        amount: @artwork.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )

    @order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(@order)
  end

  def show
    @order = current_user.account.orders.find(params[:id])
    @order.status = 1
    @order.save
  end

  def mark_as_shipped
    @order = Order.find(params[:id])
    @order.status = 2
    if @order.save
      redirect_to profile_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:artwork_id)
  end
end
