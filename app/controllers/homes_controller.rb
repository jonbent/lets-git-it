class HomesController < ApplicationController
  # helper_method :current_user, :logged_in?
  #before_filter :ensure_logged_in, except: :index
  def index
    # @current_user ||= User.find_by_id(session[:user])
  end

  # def logged_in?
  #   current_user != nil
  # end



end
