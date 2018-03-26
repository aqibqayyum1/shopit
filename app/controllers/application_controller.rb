
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :current_carttt

    # private
    # def current_carttt
      
    #   if session[:carttt_id]
    #     carttt = Carttt.find_by(:id => session[:carttt_id])
    #     if carttt.present?
    #       @current_carttt = carttt
    #     else
    #       session[:carttt_id] = nil
    #     end
    #   end

    #   if session[:carttt_id] == nil
    #     @current_carttt = Carttt.create
    #     session[:carttt_id] = @current_carttt.id
    #   end
    # end
    
    include ApplicationHelper

     def is_admin
      if !user_signed_in?
        authenticate_user!
      elsif  !current_user.has_role?(:admin)
        respond_to do |format|
          format.html do
            redirect_to root_path, notice: 'You are not authorized to view this page!'
          end
        end
      end
  end

include ApplicationHelper

end
