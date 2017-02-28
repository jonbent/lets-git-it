module SessionsHelper
  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session.delete(:user_id)
  end

  def current_user
    @current_user || User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def ensure_logged_in
    redirect_to :root unless logged_in?
  end

  def valid_scoreboard
    !!session[:scoreboard_id]
  end

  def current_scoreboard
    if valid_scoreboard
      @current_scoreboard = Scoreboard.find(session[:scoreboard_id])
    end
  end

end
