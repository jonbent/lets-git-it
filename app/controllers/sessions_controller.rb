class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create
  def create
    p "*" * 30
    p  auth_hash
    p  auth_hash.class
    user = User.find_or_create_by(:uid => auth_hash[:uid], :picture_url => auth_hash[:extra][:raw_info][:avatar_url]) do |user|
      user.username = auth_hash[:info][:name]
      user.user_hash = auth_hash
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
