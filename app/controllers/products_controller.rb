class ProductsController < ApplicationController

before_action :get_category
  def index
    @order_item =  current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product=@category.products.new
  end

  def create
    @product = @category.products.create(product_params)
    redirect_to category_path(@category)
  end
 
  private

  def get_category
   @category = Category.find(params[:category_id])
  end

  def product_params
      params.require(:product).permit(:name,:price, :description, :image)
  end

end
