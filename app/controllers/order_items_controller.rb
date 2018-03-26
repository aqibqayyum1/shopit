class OrderItemsController < ApplicationController

	def create
		@order= current_order
		@order_item = @order.order_items.new(order_item_params) 
		@order_item.save!
		
		@order.subtotal += @order_item.total_price
		@order = @order.save!
		byebug
		session[:order_id] = @order.id
	end

	def update
		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.update_attributes(order_item_params)
		@order_items = @order.order_items
	end
    
    def destroy
    	@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.destroy
		@order_items = @order.order_items
    end
	private 
		def order_item_params
			params.require(:order_item).permit(:product_id, :quantity)
		end
end
