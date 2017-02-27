class HomesController < ApplicationController
  # helper_method :current_user, :logged_in?
  #before_filter :ensure_logged_in, except: :index
  def index

    # @current_user ||= User.find_by_id(session[:user])
    #
    # client = Octokit::Client.new(:access_token => '810aa1b52dcb8040b3c9ac8ebfed00acccbc1b2f' )
    #
    #
    # user = Octokit.user client.login
    #
    # # Get the repos rel, returned from the API
    # # as repos_url in the resource
    # user.rels[:repos].href
    # # => "https://api.github.com/users/technoweenie/repos"
    #
    # repos = user.rels[:repos].get.data
    # repos.last.name
    # # => "faraday-zeromq"
    #


    # @github_response = HTTParty.get("https://api.github.com/users/georgebabayan/repos?access_token=#{ENV[GITHUB_SECRET]}")

  end
end
