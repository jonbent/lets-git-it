class HomesController < ApplicationController
  # helper_method :current_user, :logged_in?
  #before_filter :ensure_logged_in, except: :index
  def index
    # @current_user ||= User.find_by_id(session[:user])

    cohort='sf-squirrels-2017'

    #repo_name='lil-twitter-challenge'
    repo_name='phase-1-checkpoint-challenge-3-teacher-refactoring'

    content = HTTParty.get("https://api.github.com/repos/#{cohort}/#{repo_name}/readme")['content']
    if content
      decoded_content = Base64.decode64(content)
      @github_response = decoded_content
    else
      @github_response = "We have nothing for you"
    end
  end


end
