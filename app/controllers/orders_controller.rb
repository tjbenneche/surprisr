class OrdersController < ApplicationController

  def new
    @q_id = params[:q_id]
  end

  def create
    order = Order.new o_params
    order.save

  end

  private
  def o_params
    params.require(:order).permit(:q_id, :customer_email, :recipient_address, :recipient_name, :price_tier)
  end

end
