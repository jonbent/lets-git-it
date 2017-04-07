class HomesController < ApplicationController
  # helper_method :current_user, :logged_in?
  # before_filter :ensure_logged_in, except: :index
  def index
    client = Octokit::Client.new(client_id: ENV['GITHUB_KEY'], client_secret: ENV['GITHUB_SECRET'])
    user = client.user current_user.user_hash['extra']['raw_info']['login']
  end
end
