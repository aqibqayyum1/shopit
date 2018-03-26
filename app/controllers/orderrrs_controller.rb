class OrderrrsController < ApplicationController
   def index
    @orderrrs = Orderrr.all
  end

  def show
    @orderrr = Orderrr.find(params[:id])
  end

  def new
    @orderrr = Orderrr.new
  end

  def create
  	@orderrr = Orderrr.new(orderrr_params)
  	@current_carttt.line_items.each do |item|
    @orderrr.line_items << item
    item.carttt_id = nil
  end
  	@orderrr.save
  	Carttt.destroy(session[:carttt_id])
  	session[:carttt_id] = nil
  	redirect_to root_path
  end
end

private
  def orderrr_params
    params.require(:orderrr).permit(:name, :email, :address)
  end