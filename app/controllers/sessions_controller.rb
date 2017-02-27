class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create
  def create
    p "TOKEN" * 30
    p auth_hash

    # authentication = Authentication.find_by_provider_and_uid(auth_hash['provider'], auth_hash['uid'])
    # if authentication
    #   sign_in_and_redirect(:user, authentication.user)
    # end

    user = User.find_or_create_by(:uid => auth_hash[:uid]) do |user|
      user.username = auth_hash[:info][:name]
    end

    save_update_to_github
    session[:user_id] = user.id
    redirect_to :homes_index
  end

  #Here we start don't ask, don't tell policy
  def save_update_to_github
    # # since this is here, I can grab the token directly. Otherwise I'd get it from the DB.
    # token = request.env["omniauth.auth"]["credentials"]["token"]
    # github = Octokit::Client.new(:oauth_token => token)
    # repo = 'mattboldt/blogtest'
    # ref = 'heads/master'
    # sha_latest_commit = github.ref(repo, ref).object.sha
    # sha_base_tree = github.commit(repo, sha_latest_commit).commit.tree.sha
    #
    # file_name = "test.md"
    # blob_sha = github.create_blob(repo, Base64.encode64("some placeholder code, will be a @post param later."), "base64")
    # sha_new_tree = github.create_tree(repo,
    #                           [ { :path => file_name,
    #                                :mode => "100644",
    #                                :type => "blob",
    #                                :sha => blob_sha } ],
    #                            {:base_tree => sha_base_tree }).sha
    # commit_message = "Committed via Octokit!"
    # sha_new_commit = github.create_commit(repo, commit_message, sha_new_tree, sha_latest_commit).sha
    # updated_ref = github.update_ref(repo, ref, sha_new_commit)
    # puts updated_ref
  end

  def destroy
    reset_session
    redirect_to :homes_index
  end


  private
  def auth_hash
    request.env["omniauth.auth"]
  end

end
