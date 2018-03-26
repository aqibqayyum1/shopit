class CartttController < ApplicationController
  def show
    @carttt = @current_carttt
  end

  def destroy
    @carttt = @current_carttt
    @carttt.destroy
    session[:carttt_id] = nil
    redirect_to root_path
  end
end
