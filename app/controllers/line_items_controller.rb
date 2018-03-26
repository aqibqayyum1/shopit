class LineItemsController < ApplicationController
	def create
        
  			chosen_product = Product.find(params[:product_id])
  			# current_carttt = @current_carttt

   		if current_carttt.products.include?(chosen_product)
    
   			 @line_item = current_carttt.line_items.find_by(:product_id => chosen_product)
    
    		@line_item.quantity += 1
  		else
   			@line_item = LineItem.new
    		@line_item.carttt = current_carttt
    		@line_item.product = chosen_product
  		end

  		# Save and redirect to cart show path
  		@line_item.save
  		redirect_to carttt_path(current_carttt)
	end

	def destroy
		@line_item = LineItem.find(params[:id])
		@line_item.destroy
		redirect_to carttt_path(@current_carttt)
	end  
   
   def add_quantity
    @line_item = LineItem.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
    redirect_to cart_path(@current_cart)
   end

  def reduce_quantity
    @line_item = LineItem.find(params[:id])
  if @line_item.quantity > 1
    @line_item.quantity -= 1
  end
    @line_item.save
    redirect_to cart_path(@current_cart)
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to cart_path(@current_cart)
  end 
end

private
  def line_item_params
    params.require(:line_item).permit(:quantity,:product_id, :carttt_id)
  end