class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create
  def create
    p = auth_hash[:credentials][:token]
    user = User.find_or_create_by(:uid => auth_hash[:uid]) do |user|
      user.username = auth_hash[:info][:name]
    end
    session[:user_id] = user.id

    redirect_to :homes_index
  end

  def destroy
    reset_session
    redirect_to :homes_index
  end

  def shu
    auth_hash[:credentials][:token]
  end

  private
  def auth_hash
    request.env["omniauth.auth"]
  end

end
