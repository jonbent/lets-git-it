class HomesController < ApplicationController
  # helper_method :current_user, :logged_in?
  #before_filter :ensure_logged_in, except: :index
  def index
    # @current_user ||= User.find_by_id(session[:user])
    p ENV['GITHUB_KEY']
    p ENV['GITHUB_SECRET']
    client = Octokit::Client.new(client_id: ENV['GITHUB_KEY'], client_secret: ENV['GITHUB_SECRET'])



    user = client.user current_user.user_hash['extra']['raw_info']['login']
    # user.login
    # p client.keys
    p "@" *20
    p user.fields
    # p "@@" * 30
    # @github_response = client
    # @avatar = @github_response[:avatar_url]

    # # Get the repos rel, returned from the API
    # # as repos_url in the resource
    # user.rels[:repos].href
    # # => "https://api.github.com/users/technoweenie/repos"
    #
    # repos = user.rels[:repos].get.data
    # repos.last.name
    # # => "faraday-zeromq"


    # @github_response = user
  end
end
