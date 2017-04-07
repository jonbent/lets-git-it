class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create
  def create
    user = User.find_by(uid: auth_hash[:uid])
    unless user
      user = User.create(uid: auth_hash[:uid], picture_url: auth_hash[:extra][:raw_info][:avatar_url])
      user.username = auth_hash[:info][:name]
      user.save
    end
    session[:user_id] = user.id

    redirect_to :root
  end

  def destroy
    reset_session
    redirect_to :root
  end

  def shu
    auth_hash[:credentials][:token]
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
