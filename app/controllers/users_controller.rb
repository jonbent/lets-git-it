class UsersController < ApplicationController
  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @user_scoreboards = @user.scoreboards
    @total_commits = @user_scoreboards.map(&:commits).reduce(:+)
    @user_scoreboards = 1 if @user_scoreboards.nil?
    @total_commits = 1 if @total_commits.nil?
    render 'users/show'
  end

  def update_week
    @user = current_user
    # WE NEED TO SET from 'User.find(36)' TO 'CURRENT_USER'
    @user_scoreboards = @user.scoreboards
    @total_commits = @user_scoreboards.map(&:commits).reduce(:+)
    @user_scoreboards = 1 if @user_scoreboards.nil?
    @total_commits = 1 if @total_commits.nil?
    @set_week = params[:users][:update_week]
    render 'users/show'
  end

  def update_cohort
    @user = current_user
    # WE NEED TO SET TO CURRENT USER
    @user_scoreboards = @user.scoreboards
    @total_commits = @user_scoreboards.map(&:commits).reduce(:+)
    @user_scoreboards = 1 if @user_scoreboards.nil?
    @total_commits = 1 if @total_commits.nil?

    @set_cohort = params[:users][:update_cohort]
    render 'users/show'
  end
end
